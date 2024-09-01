
//SwiftUI Basics

import SwiftUI

struct ContentView: View {
    var body: some View {
        //        VStack(spacing: 0) {
        //            Text("SwiftUI Basics1")
        //                .font(.largeTitle)
        //                .fontWeight(.semibold)
        //            .foregroundStyle(.red)
        //
        //            Text("SwiftUI Basics2")
        //                .font(.largeTitle)
        //                .fontWeight(.semibold)
        //            .foregroundStyle(.green)
        //
        //            Text("SwiftUI Basics3")
        //                .font(.largeTitle)
        //                .fontWeight(.semibold)
        //            .foregroundStyle(.blue)
        //        }
        
        
        
        //        ZStack {
        //            //Background Color
        //            Color
        //                .red
        //                .opacity(0.1)
        //                .ignoresSafeArea()
        //            //Text
        //            Text("SwiftUI Basics1")
        //                .font(.largeTitle)
        //                .fontWeight(.semibold)
        //            .foregroundStyle(.blue)
        //        }
        
        
        
   //     ZStack {
            //            //Background Color
            //            Color
            //                .red
            //                .opacity(0.1)
            //                .ignoresSafeArea()
            //            //Text
            //            Text("SwiftUI Basics1")
            //                .font(.largeTitle)
            //                .fontWeight(.semibold)
            //            .foregroundStyle(.blue)
            //        }
            
            
            ZStack {
                //Background Color
               LinearGradient(colors: [.red, .purple, .green, .pink],
                startPoint: .topLeading, endPoint: .bottomTrailing)
               .opacity(0.5)
               .ignoresSafeArea()
                //Text
                Text("SwiftUI Basics1")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(.blue)
            }
    }
}


#Preview {
    ContentView()
}
