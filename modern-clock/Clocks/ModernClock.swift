//
//  ModernClock.swift
//  modern-clock
//
//  Created by dgsw8th71 on 2/21/24.
//

import SwiftUI

struct ModernClock: View {
    var body: some View {
        TimelineView(.animation) { context in
            ZStack {
                let date = context.date
                let hour = date.hourValue()
                Circle()
                    .trim(from: 0, to: hour)
                    .stroke()
                    .frame(width: 160, height: 160)
                    .rotationEffect(.degrees(-90))
                let timeText = date.msText()
                Text(timeText)
                    .font(.title)
            }
        }
    }
}

#Preview {
    ModernClock()
}
