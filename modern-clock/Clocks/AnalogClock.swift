//
//  AnalogClock.swift
//  modern-clock
//
//  Created by dgsw8th71 on 2/21/24.
//

import SwiftUI

struct AnalogClock: View {
    var body: some View {
        TimelineView(.animation) { context in
            ZStack {
                let date = context.date
                let hour = date.hourValue()
                let minute = date.minuteValue()
                let second = date.secondsValue()
                
                Circle()
                    .stroke()
                    .frame(width: 160, height: 160)
                    .rotationEffect(.degrees(-90))
                
                NeedleShape(value: second, length: 60, width: 1)
                    .foregroundColor(.red)
                    .rotationEffect(.degrees(Double(second) * 360))
                    .rotationEffect(.degrees(-90))
                
                NeedleShape(value: minute, length: 50, width: 2)
                    .rotationEffect(.degrees(Double(minute) * 360))
                    .rotationEffect(.degrees(-90))
                
                NeedleShape(value: hour, length: 40, width: 4)
                    .rotationEffect(.degrees(Double(hour) * 360))
                    .rotationEffect(.degrees(-90))
                
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 8, height: 8)
            }
            .frame(width: 200, height: 200)
        }
    }
    
    func pointForAngle(_ angle: Angle, radius: CGFloat) -> CGPoint {
        let radians = CGFloat(angle.radians)
        let x = radius * cos(radians)
        let y = radius * sin(radians)
        return CGPoint(x: x + 100, y: y + 100)
    }
    
    func hourAngle(hour: Double, minute: Double) -> Angle {
        let hourAngle = (360 / 12) * hour + (360 / 12 / 60) * minute
        return Angle(degrees: hourAngle)
    }
    
    func minuteAngle(minute: Double) -> Angle {
        let minuteAngle = (360 / 60) * minute
        return Angle(degrees: minuteAngle)
    }
    
    func secondAngle(second: Double) -> Angle {
        let secondAngle = (360 / 60) * second
        return Angle(degrees: secondAngle)
    }
}

#Preview {
    AnalogClock()
}
