//
//  ContentView.swift
//  modern-clock
//
//  Created by dgsw8th71 on 2/21/24.
//

import SwiftUI
import RealityKit
import RealityKitContent


struct HomeV: View {
    
    @Environment(VM.self) var vm
    @Environment(\.openWindow) var openWindow
    
    @State private var selectedClock: ClockType? = nil
    @State private var showNotAllowDialog = false
    
    var body: some View {
        VStack {
            NavigationSplitView {
                List(selection: $selectedClock) {
                    Text("Normal")
                        .font(.title2)
                        .toLeading()
                    ForEach(ClockType.normal, id: \.self) { clock in
                        Text(clock.rawValue + " clock")
                    }
                    Text("Stylish")
                        .font(.title2)
                        .toLeading()
                    ForEach(ClockType.stylish, id: \.self) { clock in
                        Text(clock.rawValue + " clock")
                    }
                }
                .navigationTitle("Clocks")
            } detail: {
                ZStack {
                    if let clock = selectedClock {
                        clock.view
                            .toCenter()
                            .navigationTitle("\(clock.rawValue) clock")
                        Button {
                            vm.openWindow(type: clock) { idx in
                                openWindow(id: "window\(idx)")
                            } onFail: {
                                showNotAllowDialog = true
                            }
                        } label: {
                            Text("Open window")
                        }
                        .padding()
                        .toBottom()
                        .toCenter()
                    } else {
                        Text("Select a clock!")
                    }
                }
            }
        }
        .navigationTitle("")
        .alert("You can only have 8 windows open", isPresented: $showNotAllowDialog) {
            Button("OK", role: .cancel) {}
        }
    }
}
