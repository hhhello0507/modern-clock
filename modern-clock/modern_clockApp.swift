//
//  modern_clockApp.swift
//  modern-clock
//
//  Created by dgsw8th71 on 2/21/24.
//

import SwiftUI

@main
struct modern_clockApp: App {
    
    @State var vm = VM()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeV()
                    .environment(vm)
            }
        }
        
        WindowGroup(id: "window0") {
            if let type = vm.windows[0].type {
                type.view
                    .onDisappear {
                        vm.windows[0].active = false
                        vm.windows[0].type = nil
                    }
            }
        }
        .windowResizability(.contentSize)
        WindowGroup(id: "window1") {
            if let type = vm.windows[1].type {
                type.view
                    .onDisappear {
                        vm.windows[1].active = false
                        vm.windows[1].type = nil
                    }
            }
        }
        .windowResizability(.contentSize)
        
        WindowGroup(id: "window2") {
            if let type = vm.windows[2].type {
                type.view
                    .onDisappear {
                        vm.windows[2].active = false
                        vm.windows[2].type = nil
                    }
            }
        }
        .windowResizability(.contentSize)
        
        WindowGroup(id: "window3") {
            if let type = vm.windows[3].type {
                type.view
                    .onDisappear {
                        vm.windows[3].active = false
                        vm.windows[3].type = nil
                    }
            }
        }
        .windowResizability(.contentSize)
        
        WindowGroup(id: "window4") {
            if let type = vm.windows[4].type {
                type.view
                    .onDisappear {
                        vm.windows[4].active = false
                        vm.windows[4].type = nil
                    }
            }
        }
        .windowResizability(.contentSize)
        WindowGroup(id: "window5") {
            if let type = vm.windows[5].type {
                type.view
                    .onDisappear {
                        vm.windows[5].active = false
                        vm.windows[5].type = nil
                    }
            }
        }
        .windowResizability(.contentSize)
        
        WindowGroup(id: "window6") {
            if let type = vm.windows[6].type {
                type.view
                    .onDisappear {
                        vm.windows[6].active = false
                        vm.windows[6].type = nil
                    }
            }
        }
        .windowResizability(.contentSize)
        
        WindowGroup(id: "window7") {
            if let type = vm.windows[7].type {
                type.view
                    .onDisappear {
                        vm.windows[7].active = false
                        vm.windows[7].type = nil
                    }
            }
        }
        .windowResizability(.contentSize)
    }
}
