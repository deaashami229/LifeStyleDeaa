//
//  WedgeShape.swift
//  IBDesignable
//
//  Created by DeaaLek on 8/5/21.
//

import Foundation
import SwiftUI




struct WedgeShape: Shape {
    var width: Int
    var lineWidth: CGFloat
    var lineCap: CGLineCap = .butt
    
    func path(in rect: CGRect) -> Path {
        let insetWidth = lineWidth/2
        let rect = rect.insetBy(dx: insetWidth, dy: 0)
        
        return Path() {
            $0.addArc(
                center: CGPoint(x: rect.midX, y: rect.midY),
                radius: 100,
                startAngle: Angle(degrees: Double(90 - width)),
                endAngle: Angle(degrees:  Double(90 + width)),
                clockwise: false
            )
        }
        .strokedPath(StrokeStyle(lineWidth: lineWidth, lineCap: lineCap))
    }
}
