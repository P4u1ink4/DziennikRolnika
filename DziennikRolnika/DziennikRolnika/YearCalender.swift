//
//  YearCalender.swift
//  DziennikRolnika
//
//  Created by Paulina Guzior on 31/07/2023.
//

import SwiftUI


struct YearCalender: View {
    @State private var selectedYear = Calendar.current.component(.year, from: Date())
    @State private var isLegendPresented = false
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Button(action: {
                    selectedYear -= 1
                }) {
                    Image(systemName: "chevron.left.circle")
                }
                Text(String(format: "%04d", selectedYear))
                    .font(.headline)
                Button(action: {
                    selectedYear += 1
                }) {
                    Image(systemName: "chevron.right.circle")
                }
            }
            
            ScrollView {
                LazyVStack(spacing: 10) {
                    ForEach(1...12, id: \.self) { month in
                        MonthView(year: selectedYear, month: month)
                    }
                }
                .padding()
            }
            
            Button(action: {
                isLegendPresented.toggle()
            }) {
                Text("Show Legend")
            }
            .padding(.bottom, 20)
            .sheet(isPresented: $isLegendPresented) {
                LegendView(isLegendPresented: $isLegendPresented)
            }
        }
        .padding(.top, 0.0)
        .navigationBarTitle(Text(""), displayMode: .inline)
    }
}

struct MonthView: View {
    let year: Int
    let month: Int
    
    var body: some View {
        VStack {
            Text("\(getMonthName(month))")
                .font(.headline)
                .padding(.vertical, 10)
            
            LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 7), spacing: 10) {
                ForEach(getDaysOfMonth(year: year, month: month), id: \.self) { day in
                    Text("\(day)")
                        .frame(width: 30, height: 30)
                        .foregroundColor(.black)
                        .background(getBackgroundColor(year: String(year), month: String(month), day: String(day)))
                        .cornerRadius(15)
                }
            }
        }
        .padding()
        .border(Color.gray, width: 1)
    }
    
func getDaysOfMonth(year: Int, month: Int) -> [String] {
        var days: [String] = []
        
        let firstDay = Calendar.current.date(from: DateComponents(year: year, month: month, day: 1))!
        let weekday = Calendar.current.component(.weekday, from: firstDay)
        let emptyDays = Array(repeating: "", count: weekday - 1)
        days.append(contentsOf: emptyDays)
        
        let range = Calendar.current.range(of: .day, in: .month, for: firstDay)!
        days.append(contentsOf: range.map { String($0) })
        
        return days
    }
}

func getBackgroundColor(year: String, month: String, day: String) -> Color {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let dateString = "\(year)-\(month)-\(day)"
        
        if let date = dateFormatter.date(from: dateString) {
            for specialDay in specialDays {
                let specialDate = Calendar.current.date(from: DateComponents(year: specialDay.year, month: specialDay.month, day: specialDay.day))!
                if Calendar.current.isDate(date, inSameDayAs: specialDate) {
                    return specialDay.color
                }
            }
        }
        
        return Color.clear
    }



struct LegendView: View {
    @Binding var isLegendPresented: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("LEGEND")
                .font(.headline)
            HStack(spacing: 10) {
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.blue)
                Text("Days in the month")
            }
            HStack(spacing: 10) {
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.gray)
                Text("Other days")
            }
            Spacer()
            Button(action: {
                isLegendPresented.toggle()
            }) {
                Text("Close")
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding()
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

func getMonthName(_ month: Int) -> String {
    let dateFormatter = DateFormatter()
    return dateFormatter.monthSymbols[month - 1]
}

func getDayOfWeekSymbol(_ dayOfWeek: Int) -> String {
    let dateFormatter = DateFormatter()
    return dateFormatter.shortWeekdaySymbols[dayOfWeek - 1]
}

func getNumberOfDaysInMonth(year: Int, month: Int) -> Int {
    let calendar = Calendar.current
    let components = DateComponents(year: year, month: month)
    if let date = calendar.date(from: components), let range = calendar.range(of: .day, in: .month, for: date) {
        return range.count
    }
    return 0
}


struct YearCalender_Previews: PreviewProvider {
    static var previews: some View {
        YearCalender()
    }
}
