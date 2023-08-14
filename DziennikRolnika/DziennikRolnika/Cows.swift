//
//  Cows.swift
//  DziennikRolnika
//
//  Created by Paulina Guzior on 31/07/2023.
//

import SwiftUI

struct Cow: Identifiable {
    let id = UUID()
    let identificationNumber: String
    let birthDate: Date
    let breed: String
    let lactation: String
    var events: [Event]
}

struct Event: Identifiable {
    let id = UUID()
    let type: EventType
    let date: Date
    let notes: String
}

enum EventType: String {
    case calving = "Wycielenie"
    case estrus = "Ruja"
    case dryingOff = "Zasuszenie"
    case insemination = "Inseminacja"
    case calfCheck = "Badanie cielności"
    case inne = "Inne"

    static let allTypes: [EventType] = [.calving, .estrus, .dryingOff, .insemination, .calfCheck, .inne]
}


class CowManager: ObservableObject {
    @Published var cows: [Cow] = []

    func removeCow(id: UUID) {
        cows.removeAll { cow in
            cow.id == id
        }
    }

    func addEvent(to cowID: UUID, event: Event) {
        if let cowIndex = cows.firstIndex(where: { $0.id == cowID }) {
            cows[cowIndex].events.append(event)
        }
    }

    func removeEvent(from cowID: UUID, eventID: UUID) {
        if let cowIndex = cows.firstIndex(where: { $0.id == cowID }) {
            cows[cowIndex].events.removeAll { event in
                event.id == eventID
            }
        }
    }
    
    func addCow(identificationNumber: String, birthDate: Date, breed: String, lactation: String) {
        cows.append(Cow(identificationNumber: identificationNumber, birthDate: birthDate, breed: breed, lactation: lactation, events: []))
    }
}

struct AddCowView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var cowManager: CowManager

    @State private var birthDate = Date()
    @State private var breed: String = ""
    @State private var lactation: String = ""
    @State private var prefix1 = "P"
    @State private var prefix2 = "L"
    @State private var digit1 = ""
    @State private var digit2 = ""
    @State private var digit3 = ""
    @State private var digit4 = ""
    @State private var digit5 = ""
    @State private var digit6 = ""
    @State private var digit7 = ""
    @State private var digit8 = ""
    @State private var digit9 = ""
    @State private var digit10 = ""
    @State private var digit11 = ""
    @State private var digit12 = ""

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Informacje o krowie")) {
                    HStack {
                        Text("ID")
                        TextField("1", text: $prefix1)
                            .frame(width: 15)
                            .onChange(of: prefix1) { newValue in
                                if newValue.count > 1 {
                                    prefix1 = String(newValue.prefix(1))
                                }
                            }
                        TextField("2", text: $prefix2)
                            .frame(width: 15)
                            .onChange(of: prefix2) { newValue in
                                if newValue.count > 1 {
                                    prefix2 = String(newValue.prefix(1))
                                }
                            }
                        TextField("1", text: $digit1)
                            .frame(width: 15)
                            .onChange(of: digit1) { newValue in
                                if newValue.count > 1 {
                                    digit1 = String(newValue.prefix(1))
                                }
                            }
                        TextField("2", text: $digit2)
                            .frame(width: 15)
                            .onChange(of: digit2) { newValue in
                                if newValue.count > 1 {
                                    digit2 = String(newValue.prefix(1))
                                }
                            }
                        TextField("3", text: $digit3)
                            .frame(width: 15)
                            .onChange(of: digit3) { newValue in
                                if newValue.count > 1 {
                                    digit3 = String(newValue.prefix(1))
                                }
                            }
                        TextField("4", text: $digit4)
                            .frame(width: 15)
                            .onChange(of: digit4) { newValue in
                                if newValue.count > 1 {
                                    digit4 = String(newValue.prefix(1))
                                }
                            }
                        TextField("5", text: $digit5)
                            .frame(width: 15)
                            .onChange(of: digit5) { newValue in
                                if newValue.count > 1 {
                                    digit5 = String(newValue.prefix(1))
                                }
                            }
                        TextField("6", text: $digit6)
                            .frame(width: 15)
                            .onChange(of: digit6) { newValue in
                                if newValue.count > 1 {
                                    digit6 = String(newValue.prefix(1))
                                }
                            }
                        TextField("7", text: $digit7)
                            .frame(width: 15)
                            .onChange(of: digit7) { newValue in
                                if newValue.count > 1 {
                                    digit7 = String(newValue.prefix(1))
                                }
                            }
                        TextField("8", text: $digit8)
                            .frame(width: 15)
                            .foregroundColor(.red)
                            .onChange(of: digit8) { newValue in
                                if newValue.count > 1 {
                                    digit8 = String(newValue.prefix(1))
                                }
                            }
                        TextField("9", text: $digit9)
                            .frame(width: 15)
                            .foregroundColor(.red)
                            .onChange(of: digit9) { newValue in
                                if newValue.count > 1 {
                                    digit9 = String(newValue.prefix(1))
                                }
                            }
                        TextField("10", text: $digit10)
                            .frame(width: 20)
                            .foregroundColor(.red)
                            .onChange(of: digit10) { newValue in
                                if newValue.count > 1 {
                                    digit10 = String(newValue.prefix(1))
                                }
                            }
                        TextField("11", text: $digit11)
                            .frame(width: 20)
                            .foregroundColor(.red)
                            .onChange(of: digit11) { newValue in
                                if newValue.count > 1 {
                                    digit11 = String(newValue.prefix(1))
                                }
                            }
                        TextField("12", text: $digit12)
                            .frame(width: 20)
                            .onChange(of: digit12) { newValue in
                                if newValue.count > 1 {
                                    digit12 = String(newValue.prefix(1))
                                }
                            }
                    }
                    DatePicker("Data urodzenia", selection: $birthDate, displayedComponents: .date)
                    TextField("Rasa", text: $breed)
                    TextField("Laktacja", text: $lactation)
                }
                Button("Dodaj krowę") {
                    if(!prefix1.isEmpty && !prefix2.isEmpty && !digit1.isEmpty && !digit2.isEmpty && !digit3.isEmpty && !digit4.isEmpty && !digit5.isEmpty && !digit6.isEmpty && !digit7.isEmpty && !digit8.isEmpty && !digit9.isEmpty && !digit10.isEmpty && !digit11.isEmpty && !digit12.isEmpty){
                            let identificationNumber = prefix1 + prefix2 + digit1 + digit2 + digit3 + digit4 + digit5 + digit6 + digit7 + digit8 + digit9 + digit10 + digit11 + digit12
                            cowManager.addCow(identificationNumber: identificationNumber, birthDate: birthDate, breed: breed, lactation: lactation)
                            presentationMode.wrappedValue.dismiss()
                    }
                }
            }
            .navigationBarTitle("Nowa krowa")
        }
    }
}

struct Cows: View {
    @ObservedObject private var cowManager = CowManager()
    @State private var digit1 = ""
    @State private var digit2 = ""
    @State private var digit3 = ""
    @State private var digit4 = ""
    @State private var isAddingCowSheetPresented = false

    var filteredCows: [Cow] {
        let inputDigits = digit1 + digit2 + digit3 + digit4

        if inputDigits.isEmpty {
            return cowManager.cows
        } else {
            return cowManager.cows.filter { cow in
                if !digit1.isEmpty{
                    let startIndex = cow.identificationNumber.index(cow.identificationNumber.startIndex, offsetBy: 9)
                    let digit1cow = cow.identificationNumber[startIndex]
                    if(String(digit1cow) != digit1){
                        return false
                    }
                }
                if !digit2.isEmpty{
                    let startIndex = cow.identificationNumber.index(cow.identificationNumber.startIndex, offsetBy: 10)
                    let digit2cow = cow.identificationNumber[startIndex]
                    if(String(digit2cow) != digit2){
                        return false
                    }
                }
                if !digit3.isEmpty{
                    let startIndex = cow.identificationNumber.index(cow.identificationNumber.startIndex, offsetBy: 11)
                    let digit3cow = cow.identificationNumber[startIndex]
                    if(String(digit3cow) != digit3){
                        return false
                    }
                }
                if !digit4.isEmpty{
                    let startIndex = cow.identificationNumber.index(cow.identificationNumber.startIndex, offsetBy: 12)
                    let digit4cow = cow.identificationNumber[startIndex]
                    if(String(digit4cow) != digit4){
                        return false
                    }
                }
                return true
            }
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("1", text: $digit1)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 50)
                        .foregroundColor(.red)
                    TextField("2", text: $digit2)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 50)
                        .foregroundColor(.red)
                    TextField("3", text: $digit3)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 50)
                        .foregroundColor(.red)
                    TextField("4", text: $digit4)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 50)
                        .foregroundColor(.red)
                    Button("Dodaj krowę") {
                        isAddingCowSheetPresented.toggle()
                    }
                    .padding()
                }
                List(filteredCows) { cow in
                    NavigationLink(destination: CowDetail(cow: cow, cowManager: cowManager)) {
                        Text(cow.identificationNumber)
                    }
                }
            }
            .navigationTitle("Spis krów")
        }
        .sheet(isPresented: $isAddingCowSheetPresented, content: {
            AddCowView(cowManager: cowManager)
        })
    }
}


struct CowDetail: View {
    let cow: Cow
    let cowManager: CowManager

    @State private var newEventDate = Date()
    @State private var selectedEventType: EventType = .calving
    @State private var eventNotes = ""

    var body: some View {
        VStack {
            Text("ID: \(cow.identificationNumber)")
                .font(.title)
                .padding()
            Text("Data urodzenia: \(formattedDate(date:cow.birthDate))")
                .font(.footnote)
            Text("Rasa: \(cow.breed)")
                .font(.footnote)
            Text("Laktacja: \(cow.lactation)")
                .font(.footnote)
            
            List(cow.events) { event in
                VStack(alignment: .leading) {
                    Text(event.type.rawValue)
                    Text(event.date.description)
                        .font(.caption)
                    Text(event.notes)
                        .font(.caption)
                }
            }

            DatePicker("Data", selection: $newEventDate, displayedComponents: .date)
                .padding()
            
            Picker(selection: $selectedEventType, label: Text("Zdarzenie")) {
                ForEach(EventType.allTypes, id: \.self) { type in
                    Text(type.rawValue)
                        .tag(type) // Ustawienie tagu na typ zdarzenia
                }
            }
            .pickerStyle(MenuPickerStyle()) // Ustawienie stylu pickera
            .padding()

            
            TextField("Notatki", text: $eventNotes)
                .padding()

            Button("Dodaj wydarzenie") {
                let newEvent = Event(type: selectedEventType, date: newEventDate, notes: eventNotes)
                cowManager.addEvent(to: cow.id, event: newEvent)
                newEventDate = Date()
                selectedEventType = .calving
                eventNotes = ""
            }
            .padding()
            
            Button("Usuń krowę") {
                cowManager.removeCow(id: cow.id)
            }
            .foregroundColor(.red)
            .padding()
        }
        .navigationTitle("Informacje")
    }
    
    func formattedDate(date: Date) -> String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd.MM.yyyy"
            return dateFormatter.string(from: date)
        }
}

struct Cows_Previews: PreviewProvider {
    static var previews: some View {
        Cows()
    }
}
