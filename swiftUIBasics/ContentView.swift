
//SwiftUI Basics

import SwiftUI

struct ContentView: View {
    let colorList1: [Color] =  [.black, .white, .blue]
    let colorList2: [Color] = [.red, .purple, .green, .pink]
    let rotationAngel: CGFloat = 360
    @State private var screenTapped: Bool = false
    @State private var textSize: Bool = false

    var body: some View {

            ZStack {
                //Background Color
                LinearGradient(colors: screenTapped ? colorList1 : colorList2,
                startPoint: .topLeading, endPoint: .bottomTrailing)
               .opacity(0.8)
               .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    Spacer()
                    //Text1
                    Text(screenTapped ? "The Basics of SwiftUI" : "To know what yo know and what do now know, that is true knoledge.")
                        .font(textSize ? .largeTitle: .caption)
                        .fontWeight(.semibold)
                        .foregroundStyle(.red)
                        .multilineTextAlignment(.center)
                    
                        .rotation3DEffect(
                            .degrees(screenTapped ? .zero: rotationAngel),axis: (x: 1, y: 1, z: 1)
                        )
                        .padding(.horizontal)
                    Spacer()
                    //Text2
                    Text("Antheor line of Text")
                        .font(textSize ? .largeTitle : .caption)
                        .fontWeight(.semibold)
                        .foregroundStyle(screenTapped ? .blue : .white)
                        .multilineTextAlignment(.center)
                    
                        .rotation3DEffect(
                            .degrees(screenTapped ? .zero: rotationAngel),axis: (x: 1, y: 1, z: 1)
                        )
                        .padding(.horizontal)
                    Spacer()
                    //Button
                    Button(action: {
                        textSize.toggle()
                    }, label: {
                        Text("Click Me")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.semibold)
                    })
                }
                
            }
            //change screen color if tapped
            .onTapGesture {
                withAnimation {
                    screenTapped.toggle()
                }

                }
                
            }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
