//
//  View+Ext.swift
//  modern-clock
//
//  Created by dgsw8th71 on 2/21/24.
//

import SwiftUI

public extension View {
    func toLeading() -> some View {
        HStack {
            self
            Spacer()
        }
    }
    
    func toTrailing() -> some View {
        HStack {
            Spacer()
            self
        }
    }
    
    func toTop() -> some View {
        VStack {
            self
            Spacer()
        }
    }
    
    func toBottom() -> some View {
        VStack {
            Spacer()
            self
        }
    }
    
    func toCenter() -> some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                self
                Spacer()
            }
            Spacer()
        }
    }
}
