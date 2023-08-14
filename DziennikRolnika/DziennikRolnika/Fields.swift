//  Fields.swift
//  DziennikRolnika
//
//  Created by Paulina Guzior on 31/07/2023.
//

import SwiftUI
import MapKit

struct Fields: View {
    @ObservedObject var viewModel = FieldViewModel()
    @ObservedObject private var colorPickerManager = ColorPickerManager()
    
    @State private var selectedCategoryFilters: Set<String> = []
    @State private var selectedField: Field?
    @State private var showAddFieldSheet = false
    @State private var isCategoryFilterSheetPresented = false
    @State private var isFilterApplied = false
    @State private var allCategories: Set<String> = [] // Nowa zmienna
    
    
    var filteredFields: [Field] {
        if selectedCategoryFilters.isEmpty {
            return viewModel.fields
        } else {
            return viewModel.fields.filter { selectedCategoryFilters.contains($0.category) }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    isCategoryFilterSheetPresented.toggle()
                }) {
                    Text("Filtruj")
                }
                .sheet(isPresented: $isCategoryFilterSheetPresented, content: {
                    CategoryFilterSheet(selectedCategoryFilters: $selectedCategoryFilters, allCategories: allCategories, isFilterApplied: $isFilterApplied, isCategoryFilterSheetPresented: $isCategoryFilterSheetPresented)
                })

                MapView(fields: filteredFields, selectedField: $selectedField, selectedCategoryFilters: selectedCategoryFilters, color: colorPickerManager.selectedColor)
                    .frame(height: 500)
            
                VStack {
                    ColorPicker("", selection: $colorPickerManager.selectedColor)
                }
                .frame(maxWidth: 50, maxHeight: 50)
            }
            .navigationBarItems(trailing:
                Button(action: {
                    showAddFieldSheet.toggle()
                }) {
                    Image(systemName: "plus")
                }
            )
            .sheet(isPresented: $showAddFieldSheet, content: {
                AddFieldView(allCategories: $allCategories, onAddField: { newField in
                    viewModel.fields.append(newField)
                    allCategories.insert(newField.category) // Dodaj nową kategorię do allCategories
                })
            })
        }
        .onAppear {
            updateAllCategories() // Aktualizuj allCategories na podstawie dostępnych kategorii
        }
    }
    
    private func updateAllCategories() {
        var categories = Set<String>()
        for field in viewModel.fields {
            categories.insert(field.category)
        }
        allCategories = categories
    }
}

class ColorPickerManager: ObservableObject {
    @Published var selectedColor: Color = .white
}

class FieldViewModel: ObservableObject {
    @Published var fields: [Field] = []
}

struct MapView: View {
    var fields: [Field]
    @Binding var selectedField: Field?
    var selectedCategoryFilters: Set<String>
    var color: Color
    
    @State private var isShowingDetails = false
    
    var body: some View {
        Map(coordinateRegion: regionForFields(), showsUserLocation: false, userTrackingMode: nil, annotationItems: annotationItems) { field in
            MapAnnotation(coordinate: field.location) {
                Button(action: {
                    selectedField = field
                    isShowingDetails.toggle()
                }) {
                    Circle()
                        .fill(color)
                        .frame(width: 20, height: 20)
                }
            }
        }
        .onTapGesture { // Clear selection when tapping outside pins
            selectedField = nil
            isShowingDetails = false
        }
        .frame(height: 500)
        .sheet(isPresented: $isShowingDetails) {
            if let selectedField = selectedField {
                FieldDetailsView(field: selectedField)
            }
        }
    }
    
    private var annotationItems: [Field] {
        return fields.filter { selectedCategoryFilters.isEmpty || selectedCategoryFilters.contains($0.category) }
    }
    
    private func regionForFields() -> Binding<MKCoordinateRegion> {
        let initialCoordinate = CLLocationCoordinate2D(latitude: 52.4064, longitude: 16.9252) // Poznań coordinates
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        
        return Binding(
            get: { MKCoordinateRegion(center: initialCoordinate, span: span) },
            set: { _ in }
        )
    }
}

struct FieldDetailsView: View {
    var field: Field
    
    var body: some View {
        VStack {
            Text("\(field.category)")
            TextEditor(text: .constant(field.history))
                .disabled(true)
                .padding()
        }
        .padding()
    }
}


struct CategoryFilterSheet: View {
    @Binding var selectedCategoryFilters: Set<String>
    var allCategories: Set<String> // Dodana zmienna
    @Binding var isFilterApplied: Bool
    @Binding var isCategoryFilterSheetPresented: Bool
    
    var body: some View {
        VStack {
            List(Array(allCategories), id: \.self) { category in
                Button(action: {
                    toggleCategory(category)
                }) {
                    HStack {
                        Image(systemName: selectedCategoryFilters.contains(category) ? "checkmark.square.fill" : "square")
                        Text(category)
                    }
                }
            }
            .listStyle(GroupedListStyle())
            
            Button("Zastosuj") {
                isFilterApplied = true
                isCategoryFilterSheetPresented = false
            }
            .padding()
        }
    }
    
    private func toggleCategory(_ category: String) {
        if selectedCategoryFilters.contains(category) {
            selectedCategoryFilters.remove(category)
        } else {
            selectedCategoryFilters.insert(category)
        }
    }
}

struct Field: Identifiable {
    let id = UUID()
    var location: CLLocationCoordinate2D
    var category: String
    var history: String
}

struct AddFieldView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var mapRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 52.4064, longitude: 16.9252),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    @State private var category: String = ""
    @State private var history: String = ""
    @Binding var allCategories: Set<String>
    
    var onAddField: (Field) -> Void
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $mapRegion, showsUserLocation: true, annotationItems: [Field(location: mapRegion.center, category: category, history: history)]) { field in
                MapPin(coordinate: field.location, tint: .red)
            }
            .frame(height: 400)
            
            TextField("Kategoria", text: $category)
                .padding()
            
            TextEditor(text: $history)
                .frame(height: 100)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 0).stroke(Color.gray, lineWidth: 1))
            
            Button("Dodaj pole") {
                if !allCategories.contains(category) {
                    allCategories.insert(category) // Dodaj nową kategorię do allCategories
                }
                
                let newField = Field(location: mapRegion.center, category: category, history: history)
                onAddField(newField)
                presentationMode.wrappedValue.dismiss()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}


struct Fields_Previews: PreviewProvider {
    static var previews: some View {
        Fields()
    }
}
