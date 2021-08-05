//
//  ElementData.swift
//  IBDesignable
//
//  Created by DeaaLek on 8/5/21.
//

import Foundation
import SwiftUI

struct ElementData {
    var lengthLine:Int = 5
    var score:Int
    var image:Image
    var color:Color
    
    init(score:Int = 5,image:Image = Image(uiImage: UIImage(named: "imageBlue")!),color:Color = Color.blue) {
        //        self.lengthLine = lengthLine
        self.score = score
        self.image = image
        self.color = color
    }
    
    mutating func copy(element:ElementData,lengthLine:Int) {
        self.lengthLine = element.lengthLine
        self.score = element.score
        self.image = element.image
        self.color = element.color
    }
    
}
