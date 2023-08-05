//
//  SpecialDays.swift
//  DziennikRolnika
//
//  Created by Paulina Guzior on 05/08/2023.
//

import Foundation
import SwiftUI

struct SpecialDay {
    let year: Int
    let month: Int
    let day: Int
    let color: Color
}

let specialDays: [SpecialDay] = [
    SpecialDay(year: 2023, month: 1, day: 1, color: Color.blue),
    SpecialDay(year: 2023, month: 2, day: 18, color: Color.green)
]
