//
//  LazyGrid.swift
//  appStoreToday
//
//  Created by Terry Kuo on 2021/2/26.
//

import SwiftUI

struct LazyGrid: View {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            LazyVGrid(
                columns: [
                    GridItem(.adaptive(minimum: 160, maximum: 200), spacing: 16)
                ],
            spacing: 16
            
            )   {
                LazyGridCard()
                LazyGridCard()
                LazyGridCard()
                LazyGridCard()
                LazyGridCard()
                LazyGridCard()
            }
            .padding()
        }
    }
}

struct LazyGrid_Previews: PreviewProvider {
    static var previews: some View {
        LazyGrid()
    }
}


struct LazyGridCard: View {
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
