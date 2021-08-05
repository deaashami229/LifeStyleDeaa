import SwiftUI
//temp degrees1  degrees2  degrees3  degrees4
//20   35        95
//10   17        51         85
//5    13        40         67        94


struct ContentView: View {
    var body: some View {
        IBDesignableView(
            numLevel: .eight,
            durationAnim:0.5,
            label:"Deaa Lek",
            level1:ElementData(score:3, color:Color.black),
            level8:ElementData(color:Color.black)
        )
        
    }
}


