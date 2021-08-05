//
//  IBDesignableView.swift
//  IBDesignable
//
//  Created by DeaaLek on 8/5/21.
//

import Foundation
import SwiftUI

enum NumLevel {
    case four, six, eight
}
struct IBDesignableView: View {
    var listData:Array<ElementData> = []
    var durationAnim:Double
    var label:String
    var size:CGFloat
    
    init(
        numLevel:NumLevel = NumLevel.eight,
        durationAnim:Double = 0.5,
        label:String = "My LifeStyle",
        size:CGFloat = 1,
        level1:ElementData = ElementData(),
        level2:ElementData = ElementData(),
        level3:ElementData = ElementData(),
        level4:ElementData = ElementData(),
        level5:ElementData = ElementData(),
        level6:ElementData = ElementData(),
        level7:ElementData = ElementData(),
        level8:ElementData = ElementData()
    ) {
        self.durationAnim = durationAnim
        self.label = label
        self.size = size
        if (numLevel == NumLevel.four){
            var  el1:ElementData = ElementData()
            el1.copy(element: level1, lengthLine: 20)
            listData.append(el1)
            
            var  el2:ElementData = ElementData()
            el2.copy(element: level2, lengthLine: 20)
            listData.append(el2)
            
            var  el3:ElementData = ElementData()
            el3.copy(element: level3, lengthLine: 20)
            listData.append(el3)
            
            var  el4:ElementData = ElementData()
            el4.copy(element: level4, lengthLine: 20)
            listData.append(el4)
        }else if (numLevel == NumLevel.six){
            var  el1:ElementData = ElementData()
            el1.copy(element: level1, lengthLine: 10)
            listData.append(el1)
            
            var  el2:ElementData = ElementData()
            el2.copy(element: level2, lengthLine: 10)
            listData.append(el2)
            
            var  el3:ElementData = ElementData()
            el3.copy(element: level3, lengthLine: 10)
            listData.append(el3)
            
            var  el4:ElementData = ElementData()
            el4.copy(element: level4, lengthLine: 10)
            listData.append(el4)
            
            var  el5:ElementData = ElementData()
            el5.copy(element: level5, lengthLine: 10)
            listData.append(el5)
            
            var  el6:ElementData = ElementData()
            el6.copy(element: level6, lengthLine: 10)
            listData.append(el6)
        }else{
            var  el1:ElementData = ElementData()
            el1.copy(element: level1, lengthLine: 5)
            listData.append(el1)
            
            var  el2:ElementData = ElementData()
            el2.copy(element: level2, lengthLine: 5)
            listData.append(el2)
            
            var  el3:ElementData = ElementData()
            el3.copy(element: level3, lengthLine: 5)
            listData.append(el3)
            
            var  el4:ElementData = ElementData()
            el4.copy(element: level4, lengthLine: 5)
            listData.append(el4)
            
            var  el5:ElementData = ElementData()
            el5.copy(element: level5, lengthLine: 5)
            listData.append(el5)
            
            var  el6:ElementData = ElementData()
            el6.copy(element: level6, lengthLine: 5)
            listData.append(el6)
            
            var  el7:ElementData = ElementData()
            el7.copy(element: level7, lengthLine: 5)
            listData.append(el7)
            
            var  el8:ElementData = ElementData()
            el8.copy(element: level8, lengthLine: 5)
            listData.append(el8)
        }
        
        
    }
    
    var body: some View {
        VStack(spacing:0){
            ZStack{
                if (listData.count == 8){
                    DoubleLevel(degrees:13,element1: listData[3],element2: listData[4], durationAnim: durationAnim)
                    DoubleLevel(degrees:40,element1: listData[2],element2: listData[5], durationAnim: durationAnim)
                    DoubleLevel(degrees:67,element1: listData[1],element2: listData[6], durationAnim: durationAnim)
                    DoubleLevel(degrees:94,element1: listData[0],element2: listData[7], durationAnim: durationAnim)
                }else if (listData.count == 6){
                    DoubleLevel(degrees:17,element1: listData[2],element2: listData[3], durationAnim: durationAnim)
                    DoubleLevel(degrees:51,element1: listData[1],element2: listData[4], durationAnim: durationAnim)
                    DoubleLevel(degrees:85,element1: listData[0],element2: listData[5], durationAnim: durationAnim)
                }else  if (listData.count == 4){
                    DoubleLevel(degrees:35,element1: listData[1],element2: listData[2], durationAnim: durationAnim)
                    DoubleLevel(degrees:95,element1: listData[0],element2: listData[3], durationAnim: durationAnim)
                }
            }
            .rotationEffect(Angle(degrees: 180))
            .frame(height:100)
            Text(self.label).font(.system(size: 24))
            
        }
        .scaleEffect(self.size >= 1 ? 1 : self.size)
        //        .rotationEffect(Angle(degrees: -90))
    }
}


