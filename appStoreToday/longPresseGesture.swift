//
//  FitnessPalAddAnimation.swift
//  appStoreToday
//
//  Created by Terry Kuo on 2021/3/3.
//

import SwiftUI


struct longPresseGesture: View {
    @State var press = false
    
    var body: some View {
        Color.red.opacity(press ? 0.2 : 1)
            .ignoresSafeArea()
            .onLongPressGesture(
                minimumDuration: .leastNormalMagnitude,
                maximumDistance: 0,
                pressing: { press in
                self.press = press
                }, perform: {/*not needed*/}
)
    }
}

struct FitnessPalAddAnimation_Previews: PreviewProvider {
    static var previews: some View {
        longPresseGesture()
    }
}
 
