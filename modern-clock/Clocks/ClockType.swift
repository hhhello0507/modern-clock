//
//  ClockType.swift
//  modern-clock
//
//  Created by dgsw8th71 on 2/21/24.
//

import Foundation
import SwiftUI

enum ClockType: String, CaseIterable, Hashable {
    
    case future = "future"
    case simple = "modern"
    case analog = "analog"
    case advancedAnalog = "advanced analog"
    
    case full = "full"
    case hour = "hour"
    case minute = "minute"
    
    var view: some View {
        Group {
            switch self {
            case .future: FutureClock()
            case .simple: ModernClock()
            case .analog: AnalogClock()
            case .advancedAnalog: AdvancedAnalogClock()
                
            case .full: FullClock()
            case .hour: HourClock()
            case .minute: MinuteClock()
            }
        }
    }
    
    static var stylish: [ClockType] = [.future, .simple, .analog, .advancedAnalog]
    static var normal: [ClockType] = [.full, .hour, .minute]
}
