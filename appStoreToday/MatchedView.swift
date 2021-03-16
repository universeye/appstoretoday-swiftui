//
//  MatchedView.swift
//  appStoreToday
//
//  Created by Terry Kuo on 2021/3/2.
//

import SwiftUI

struct MatchedView: View {
    @State var show = false
    @State var appear = false
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            VStack {
                Rectangle()
                    .matchedGeometryEffect(id: "circle", in: namespace)
                    //match geometry effect has to be used before the frame
                    .frame(width: 100, height: 100)
                    .rotationEffect(Angle(degrees: appear ? 0 : 15))
            }
                
                
                //two different circle they will link together because of the id tag is the same
            if show {
                ScrollView {
                    VStack {
                        Rectangle()
                        .matchedGeometryEffect(id: "circle", in: namespace)
                            .frame(width: 300, height: 300)
                        Text("this is my content")
                            .offset(y: appear ? 0 : -100)
                    }
                }
                .frame(maxWidth: .infinity)
                .background(Color.blue.opacity(appear ? 100 : 0))
                .ignoresSafeArea()
                .onAppear() {
                    appear = true
                    
                }
                .onDisappear() {
                    appear = false
                }
            }
        }
        .animation(.spring())
        .onTapGesture {
            show.toggle()
        }
    }
}

struct MatchedView_Previews: PreviewProvider {
    static var previews: some View {
        MatchedView()
    }
}
