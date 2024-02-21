//
//  Date+Ext.swift
//  modern-clock
//
//  Created by dgsw8th71 on 2/21/24.
//

import Foundation

extension Date {
    func secondsValue() -> Double {
        let seconds = Calendar.current.component(.second, from: self)
        return Double(seconds) / 60
    }
    
    func minuteValue() -> Double {
        let minute = Calendar.current.component(.minute, from: self)
        return Double(minute) / 60
    }
    
    func hourValue() -> Double {
        let hour = Calendar.current.component(.hour, from: self)
        return Double(hour) / 24
    }
    
    func fullText() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "E, MMM dd 'at' HH:mm"
        let dateString = formatter.string(from: self)
        return dateString
    }
    
    func hmsText() -> String {
        let c = Calendar.current.dateComponents([.hour, .minute, .second], from: self)
        if let h = c.hour,
           let m = c.minute,
           let s = c.second
        {
            return String(format: "%02d:%02d:%02d", h, m, s)
        } else {
            return "Invalid time"
        }
    }
    
    func msText() -> String {
        let c = Calendar.current.dateComponents([.minute, .second], from: self)
        if let m = c.minute,
           let s = c.second
        {
            return String(format: "%02d:%02d", m, s)
        } else {
            return "Invalid time"
        }
    }
}
