//
//  ContentView.swift
//  DziennikRolnika
//
//  Created by Paulina Guzior on 31/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Text(currentDateFormatted())
                    .font(.title)
                HStack(){
                    Image("Clear")
                    Text("Słonecznie")
                    // BŁĄD W POBIERANIU POGODY
                }
                VStack {
                    Text("NAJBLIŻSZE NA POLU:")
                        .font(.subheadline)
                        .frame(width: 200.0)
                    Text("- nie wiem jeszcze")
                        .font(.footnote)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.013, brightness: 0.304))
                        .frame(width: 200.0)
                    Spacer()
                        .frame(height: 20.0)
                    Text("OPCJONALNE WYMAGANIA:")
                        .font(.subheadline)
                        .frame(width: 200.0)
                    Text("- nie wiem jeszcze np. pogoda")
                        .font(.footnote)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.013, brightness: 0.304))
                        .frame(width: 200.0)
                    }
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color(hue: 1.0, saturation: 0.013, brightness: 0.304), lineWidth: 2)
                    )
                Spacer()
                    .frame(height: 20.0)
                VStack {
                    Text("DO ZROBIENIA:")
                        .font(.subheadline)
                        .frame(width: 200.0)
                    Text(" - zrobić to do list")
                        .frame(width: 200.0)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.013, brightness: 0.304))
                        .font(.footnote)
                    }
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color(hue: 1.0, saturation: 0.013, brightness: 0.304), lineWidth: 2)
                    )
                Spacer()
                    .frame(height: 20.0)
                VStack(alignment: .center, spacing: 15.0){
                    NavigationLink(destination: YearCalender()) {
                        Text("Kalendarz roczny")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.013, brightness: 0.304))
                    }
                    NavigationLink(destination: Cows()) {
                        Text("Spis krów")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.013, brightness: 0.304))
                    }
                    NavigationLink(destination: Fields()) {
                        Text("Spis pól")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.013, brightness: 0.304))
                    }
                    }
                    .padding()
                Spacer()
                    .frame(height: 100.0)

            }
        }
    }
}

func currentDateFormatted() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd.MM.yyyy"
    return dateFormatter.string(from: Date())
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
