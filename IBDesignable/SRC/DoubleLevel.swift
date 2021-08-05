//
//  DoubleLevel.swift
//  IBDesignable
//
//  Created by DeaaLek on 8/5/21.
//

import Foundation
import SwiftUI


struct DoubleLevel: View {
    var degrees:Int
    var element1:ElementData
    var element2:ElementData
    var durationAnim:Double
    var body: some View {
        ZStack{
            SingleLevel(element: element1, durationAnim: durationAnim)
                .rotationEffect(Angle(degrees: Double(-1 * degrees)))
            SingleLevel(element: element2, durationAnim: durationAnim).rotationEffect(Angle(degrees: Double(degrees)))
            
        }
        //        .rotationEffect(Angle(degrees: -90))
    }
}
