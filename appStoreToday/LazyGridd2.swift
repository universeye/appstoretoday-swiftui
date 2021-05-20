//
//  LazyGridd2.swift
//  appStoreToday
//
//  Created by Terry Kuo on 2021/3/2.
//

import SwiftUI

struct LazyGridd2: View {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            ScrollView (.horizontal) { //Horizontal scroll
                LazyHGrid( //Horizontal lazy grid
                    rows: [ //Fit as much items in a ROW first
                        GridItem(.adaptive(minimum: 160), spacing: 16)
                    ], spacing: 16
                    
                )   {
                    ForEach(0 ..< 10) { item in
                        LazyGridCard2()
                            .frame(maxWidth: 160)
                    }//ForEach
                }
                .padding()
            } //ScrollView
            .background(Color.black) //set it to blue so its easy to see
            .frame(width: 375, height: 600)
        }
    }
}

struct LazyGridd2_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridd2()
    }
}

struct LazyGridCard2: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Testing Text")
                .font(.largeTitle).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image(uiImage: #imageLiteral(resourceName: "mymind-tZCrFpSNiIQ-unsplash")).resizable())
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        
    }
}
