//
//  Clock1V.swift
//  modern-clock
//
//  Created by dgsw8th71 on 2/21/24.
//

import SwiftUI

struct FutureClock: View {
    var body: some View {
        TimelineView(.animation) { context in
            ZStack {
                let date = context.date
                let second = date.secondsValue()
                Circle()
                    .trim(from: 0, to: second)
                    .stroke()
                    .frame(width: 200, height: 200)
                    .rotationEffect(.degrees(-90))
                let minute = date.minuteValue()
                Circle()
                    .trim(from: 0, to: minute)
                    .stroke()
                    .frame(width: 180, height: 180)
                    .rotationEffect(.degrees(-90))
                let hour = date.hourValue()
                Circle()
                    .trim(from: 0, to: hour)
                    .stroke()
                    .frame(width: 160, height: 160)
                    .rotationEffect(.degrees(-90))
                let timeText = date.hmsText()
                Text(timeText)
                    .font(.title)
            }
        }
    }
}
