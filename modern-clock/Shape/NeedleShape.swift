//
//  NIddleShape.swift
//  modern-clock
//
//  Created by dgsw8th71 on 2/21/24.
//

import SwiftUI

struct NeedleShape: Shape {
    var value: CGFloat // 시, 분, 초의 값 (0~1)
    var length: CGFloat // 바늘의 길이
    var width: CGFloat // 바늘의 너비
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // 바늘의 시작점
        let startX = rect.midX
        let startY = rect.midY
        
        // 바늘의 끝점
        let endX = startX + cos(2 * .pi * Double(value)) * length
        let endY = startY + sin(2 * .pi * Double(value)) * length
        
        // 바늘을 그림
        path.move(to: CGPoint(x: startX, y: startY))
        path.addLine(to: CGPoint(x: endX, y: endY))
        
        return path.strokedPath(StrokeStyle(lineWidth: width, lineCap: .round))
    }
}

