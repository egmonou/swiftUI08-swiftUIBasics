
//SwiftUI Basics

import SwiftUI

struct ContentView: View {
    
    @State private var screenTapped: Bool = false
    @State private var offsetY: CGFloat = -150

    var body: some View {
            let colorList1: [Color] =  [.black, .white, .blue]
            let colorList2: [Color] = [.red, .purple, .green, .pink]
            ZStack {
                //Background Color
                LinearGradient(colors: screenTapped ? colorList1 : colorList2,
                startPoint: .topLeading, endPoint: .bottomTrailing)
               .opacity(0.8)
               .ignoresSafeArea()
                //Text
                Text("SwiftUI Basics1")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(.blue)
                    .offset(y: offsetY)
            }
            .onTapGesture {
                //change screen color if tapped
                screenTapped.toggle()
                withAnimation(.easeIn(duration: 1)) {
                    if screenTapped {
                        offsetY = -1000
                    }else {
                        offsetY = 0
                    }
                }
                
            }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
