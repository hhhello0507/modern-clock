//
//  MinuteClock.swift
//  modern-clock
//
//  Created by dgsw8th71 on 2/21/24.
//

import SwiftUI

struct MinuteClock: View {
    var body: some View {
        TimelineView(.animation) { context in
            Text(context.date.msText())
                .font(.title)
        }
    }
}
