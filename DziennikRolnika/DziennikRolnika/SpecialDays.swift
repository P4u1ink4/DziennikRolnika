//
//  SpecialDays.swift
//  DziennikRolnika
//
//  Created by Paulina Guzior on 05/08/2023.
//

import Foundation
import SwiftUI

struct SpecialDay {
    let month: Int
    let day: Int
    let color: Color
}

let specialDays: [SpecialDay] = [
    SpecialDay(month: 1, day: 15, color: Color(hue: 0.115, saturation: 0.745, brightness: 0.653)),
    SpecialDay(month: 1, day: 16, color: Color(hue: 0.115, saturation: 0.745, brightness: 0.653)),
    SpecialDay(month: 1, day: 17, color: Color(hue: 0.115, saturation: 0.745, brightness: 0.653)),
    SpecialDay(month: 1, day: 18, color: Color(hue: 0.115, saturation: 0.745, brightness: 0.653)),
    SpecialDay(month: 1, day: 19, color: Color(hue: 0.115, saturation: 0.745, brightness: 0.653)),
    SpecialDay(month: 1, day: 20, color: Color(hue: 0.115, saturation: 0.745, brightness: 0.653)),
    SpecialDay(month: 1, day: 21, color: Color(hue: 0.115, saturation: 0.745, brightness: 0.653)),
    
    SpecialDay(month: 2, day: 13, color: Color(hue: 0.115, saturation: 0.745, brightness: 0.653)),
    SpecialDay(month: 2, day: 14, color: Color(hue: 0.115, saturation: 0.745, brightness: 0.653)),
    SpecialDay(month: 2, day: 15, color: Color(hue: 0.115, saturation: 0.745, brightness: 0.653)),
    SpecialDay(month: 2, day: 16, color: Color(hue: 0.115, saturation: 0.745, brightness: 0.653)),
    SpecialDay(month: 2, day: 17, color: Color(hue: 0.115, saturation: 0.745, brightness: 0.653)),
    SpecialDay(month: 2, day: 18, color: Color(hue: 0.115, saturation: 0.745, brightness: 0.653)),
    SpecialDay(month: 2, day: 19, color: Color(hue: 0.115, saturation: 0.745, brightness: 0.653)),
    SpecialDay(month: 2, day: 20, color: Color(hue: 0.115, saturation: 0.745, brightness: 0.653)),
    
    SpecialDay(month: 3, day: 8, color: Color(hue: 0.144, saturation: 0.962, brightness: 0.893)),
    SpecialDay(month: 3, day: 9, color: Color(hue: 0.144, saturation: 0.962, brightness: 0.893)),
    SpecialDay(month: 3, day: 10, color: Color(hue: 0.144, saturation: 0.962, brightness: 0.893)),
    SpecialDay(month: 3, day: 11, color: Color(hue: 0.144, saturation: 0.962, brightness: 0.893)),
    SpecialDay(month: 3, day: 12, color: Color(hue: 0.144, saturation: 0.962, brightness: 0.893)),
    SpecialDay(month: 3, day: 13, color: Color(hue: 0.144, saturation: 0.962, brightness: 0.893)),
    SpecialDay(month: 3, day: 14, color: Color(hue: 0.144, saturation: 0.962, brightness: 0.893)),
    
    SpecialDay(month: 3, day: 15, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 3, day: 16, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 3, day: 17, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 3, day: 18, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 3, day: 19, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 3, day: 20, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 3, day: 21, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    
    SpecialDay(month: 4, day: 7, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 4, day: 8, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 4, day: 9, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 4, day: 10, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 4, day: 11, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 4, day: 12, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 4, day: 13, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 4, day: 14, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 4, day: 15, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 4, day: 16, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 4, day: 17, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 4, day: 18, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 4, day: 19, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 4, day: 20, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    
    SpecialDay(month: 5, day: 7, color: Color(hue: 0.271, saturation: 0.963, brightness: 0.949)),
    SpecialDay(month: 5, day: 8, color: Color(hue: 0.271, saturation: 0.963, brightness: 0.949)),
    SpecialDay(month: 5, day: 9, color: Color(hue: 0.271, saturation: 0.963, brightness: 0.949)),
    SpecialDay(month: 5, day: 10, color: Color(hue: 0.271, saturation: 0.963, brightness: 0.949)),
    SpecialDay(month: 5, day: 20, color: Color(hue: 0.271, saturation: 0.963, brightness: 0.949)),
    SpecialDay(month: 5, day: 21, color: Color(hue: 0.271, saturation: 0.963, brightness: 0.949)),
    SpecialDay(month: 5, day: 22, color: Color(hue: 0.271, saturation: 0.963, brightness: 0.949)),
    SpecialDay(month: 5, day: 23, color: Color(hue: 0.271, saturation: 0.963, brightness: 0.949)),
    SpecialDay(month: 5, day: 24, color: Color(hue: 0.271, saturation: 0.963, brightness: 0.949)),
    SpecialDay(month: 5, day: 25, color: Color(hue: 0.271, saturation: 0.963, brightness: 0.949)),
    SpecialDay(month: 5, day: 28, color: Color(hue: 0.271, saturation: 0.963, brightness: 0.949)),
    SpecialDay(month: 5, day: 29, color: Color(hue: 0.271, saturation: 0.963, brightness: 0.949)),
    SpecialDay(month: 5, day: 30, color: Color(hue: 0.271, saturation: 0.963, brightness: 0.949)),
    
    SpecialDay(month: 6, day: 1, color: Color(hue: 0.164, saturation: 1.0, brightness: 1.0)),
    SpecialDay(month: 6, day: 2, color: Color(hue: 0.164, saturation: 1.0, brightness: 1.0)),
    SpecialDay(month: 6, day: 3, color: Color(hue: 0.164, saturation: 1.0, brightness: 1.0)),
    SpecialDay(month: 6, day: 27, color: Color(hue: 0.164, saturation: 1.0, brightness: 1.0)),
    SpecialDay(month: 6, day: 28, color: Color(hue: 0.164, saturation: 1.0, brightness: 1.0)),
    SpecialDay(month: 6, day: 29, color: Color(hue: 0.164, saturation: 1.0, brightness: 1.0)),
    SpecialDay(month: 6, day: 30, color: Color(hue: 0.164, saturation: 1.0, brightness: 1.0)),
    
    SpecialDay(month: 6, day: 10, color: Color(hue: 0.294, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 6, day: 11, color: Color(hue: 0.294, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 6, day: 12, color: Color(hue: 0.294, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 6, day: 13, color: Color(hue: 0.294, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 6, day: 14, color: Color(hue: 0.294, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 6, day: 15, color: Color(hue: 0.294, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 6, day: 16, color: Color(hue: 0.294, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 6, day: 17, color: Color(hue: 0.294, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 6, day: 18, color: Color(hue: 0.294, saturation: 0.437, brightness: 0.981)),
    
    SpecialDay(month: 7, day: 1, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 7, day: 2, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 7, day: 3, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 7, day: 21, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 7, day: 22, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 7, day: 23, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 7, day: 29, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 7, day: 30, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 7, day: 31, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    
    SpecialDay(month: 7, day: 4, color: Color(hue: 0.219, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 7, day: 5, color: Color(hue: 0.219, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 7, day: 6, color: Color(hue: 0.219, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 7, day: 7, color: Color(hue: 0.219, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 7, day: 8, color: Color(hue: 0.219, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 7, day: 9, color: Color(hue: 0.219, saturation: 0.437, brightness: 0.981)),
    
    SpecialDay(month: 7, day: 10, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 7, day: 11, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 7, day: 12, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 7, day: 13, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 7, day: 14, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 7, day: 15, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 7, day: 16, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 7, day: 17, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    
    SpecialDay(month: 8, day: 3, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 8, day: 4, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 8, day: 5, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 8, day: 6, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 8, day: 17, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 8, day: 18, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 8, day: 19, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 8, day: 20, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 8, day: 21, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 8, day: 22, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 8, day: 23, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 8, day: 25, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 8, day: 26, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 8, day: 27, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 8, day: 28, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    SpecialDay(month: 8, day: 29, color: Color(hue: 0.752, saturation: 0.437, brightness: 0.981)),
    
    SpecialDay(month: 8, day: 9, color: Color(hue: 0.007, saturation: 0.27, brightness: 0.702)),
    SpecialDay(month: 8, day: 10, color: Color(hue: 0.007, saturation: 0.27, brightness: 0.702)),
    SpecialDay(month: 8, day: 11, color: Color(hue: 0.007, saturation: 0.27, brightness: 0.702)),
    SpecialDay(month: 8, day: 12, color: Color(hue: 0.007, saturation: 0.27, brightness: 0.702)),
    SpecialDay(month: 8, day: 13, color: Color(hue: 0.007, saturation: 0.27, brightness: 0.702)),
    SpecialDay(month: 8, day: 14, color: Color(hue: 0.007, saturation: 0.27, brightness: 0.702)),
    SpecialDay(month: 8, day: 15, color: Color(hue: 0.007, saturation: 0.27, brightness: 0.702)),

    SpecialDay(month: 9, day: 9, color: Color(hue: 0.007, saturation: 0.27, brightness: 0.702)),
    SpecialDay(month: 9, day: 10, color: Color(hue: 0.007, saturation: 0.27, brightness: 0.702)),
    SpecialDay(month: 9, day: 11, color: Color(hue: 0.007, saturation: 0.27, brightness: 0.702)),
    SpecialDay(month: 9, day: 12, color: Color(hue: 0.007, saturation: 0.27, brightness: 0.702)),
    SpecialDay(month: 9, day: 13, color: Color(hue: 0.007, saturation: 0.27, brightness: 0.702)),
    SpecialDay(month: 9, day: 14, color: Color(hue: 0.007, saturation: 0.27, brightness: 0.702)),
    
    SpecialDay(month: 9, day: 18, color: Color(hue: 0.314, saturation: 0.167, brightness: 0.702)),
    SpecialDay(month: 9, day: 19, color: Color(hue: 0.314, saturation: 0.167, brightness: 0.702)),
    SpecialDay(month: 9, day: 20, color: Color(hue: 0.314, saturation: 0.167, brightness: 0.702)),
    SpecialDay(month: 9, day: 25, color: Color(hue: 0.314, saturation: 0.167, brightness: 0.702)),
    SpecialDay(month: 9, day: 26, color: Color(hue: 0.314, saturation: 0.167, brightness: 0.702)),
    SpecialDay(month: 9, day: 27, color: Color(hue: 0.314, saturation: 0.167, brightness: 0.702)),
    
    SpecialDay(month: 10, day: 6, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 10, day: 7, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 10, day: 8, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 10, day: 9, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 10, day: 10, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 10, day: 11, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 10, day: 12, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 10, day: 13, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 10, day: 14, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    
    SpecialDay(month: 10, day: 16, color: Color(hue: 0.146, saturation: 0.491, brightness: 0.787)),
    SpecialDay(month: 10, day: 17, color: Color(hue: 0.146, saturation: 0.491, brightness: 0.787)),
    SpecialDay(month: 10, day: 18, color: Color(hue: 0.146, saturation: 0.491, brightness: 0.787)),
    SpecialDay(month: 10, day: 19, color: Color(hue: 0.146, saturation: 0.491, brightness: 0.787)),
    SpecialDay(month: 10, day: 20, color: Color(hue: 0.146, saturation: 0.491, brightness: 0.787)),
    SpecialDay(month: 10, day: 21, color: Color(hue: 0.146, saturation: 0.491, brightness: 0.787)),
    
    SpecialDay(month: 11, day: 7, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 11, day: 8, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893)),
    SpecialDay(month: 11, day: 9, color: Color(hue: 0.48, saturation: 0.762, brightness: 0.893))
]

