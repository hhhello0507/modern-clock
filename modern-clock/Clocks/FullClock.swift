//
//  FullClock.swift
//  modern-clock
//
//  Created by dgsw8th71 on 2/21/24.
//

import SwiftUI

struct FullClock: View {
    var body: some View {
        TimelineView(.animation) { context in
            let timeText = context.date.fullText()
            Text(timeText)
                .font(.title)
        }
    }
}
