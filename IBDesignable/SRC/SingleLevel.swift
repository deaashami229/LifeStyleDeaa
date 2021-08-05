//
//  SingleLevel.swift
//  IBDesignable
//
//  Created by DeaaLek on 8/5/21.
//

import Foundation
import SwiftUI


struct SingleLevel:View {
    //    var temp:Int
    var element:ElementData
    var durationAnim:Double
    @State var isCall:Bool = false
    @State var colorAnim:Int = 0
    init(element:ElementData = ElementData(), durationAnim:Double) {
        self.element = element
        self.durationAnim = durationAnim
    }
    func activeAnim()  {
        DispatchQueue.main.asyncAfter(deadline: .now() + self.durationAnim) {
            if (colorAnim >= element.score){
                return
            }else{
                withAnimation{
                    colorAnim = colorAnim + 1
                    self.activeAnim()
                }
            }
        }
    }
    var body: some View{
        if (!isCall){
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                if (!isCall){
                    self.activeAnim()
                    isCall = true
                }
            }
        }
        return  VStack(spacing:0){
            ZStack {
                VStack(spacing:0){
                    VStack(spacing:0){
                        ForEach(0 ..< 5) { number in
                            WedgeShape(
                                width: element.lengthLine + (3 * number) ,
                                lineWidth: 10
                            )
                            .foregroundColor(
                                colorAnim >= (number + 1) ? element.color:
                                    element.color.opacity(0.18))
                            .frame( height: 20)
                        }
                        //                .rotationEffect(Angle(degrees: 90))
                    } .frame( height: 300)
                    Image(uiImage: UIImage(named: "imageBlue")!).resizable().renderingMode(.template).foregroundColor(
                        (colorAnim >= element.score && element.score == 5) ? element.color:
                            element.color.opacity(0.18)
                    ).frame(width: CGFloat(element.lengthLine + 20), height: CGFloat(element.lengthLine + 20))
                    .rotationEffect(Angle(degrees: 180))
                    
                }
            }
        }
    }
}
