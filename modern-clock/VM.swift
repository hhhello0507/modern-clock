//
//  HomeVM.swift
//  modern-clock
//
//  Created by dgsw8th71 on 2/21/24.
//

import SwiftUI
import Observation

struct Window {
    var idx: Int
    var active = false
    var type: ClockType? = nil
}

@Observable
final class VM {
    
    var windows: [Window] = {
        var arr: [Window] = []
        for i in 0..<8 {
            arr.append(Window(idx: i))
        }
        return arr
    }()
    
    func openWindow(type: ClockType,
                    onSuccess: @escaping (Int) -> Void,
                    onFail: @escaping () -> Void) {
        var selectedIdx = -1
        for (idx, w) in windows.enumerated() {
            if !w.active {
                windows[idx].active = true
                selectedIdx = w.idx
                windows[idx].type = type
                break
            }
        }
        if selectedIdx != -1 {
            onSuccess(selectedIdx)
        } else {
            onFail()
        }
        print(windows)
    }
    
    func closeWindow(idx: Int) {
        
    }
    
}
