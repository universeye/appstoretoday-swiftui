//
//  Home.swift
//  appStoreToday
//
//  Created by Terry Kuo on 2021/2/26.
//

import SwiftUI

struct Home: View {
    init() {
        UITabBar.appearance().barTintColor = UIColor(named: "Color")
    }
    var body: some View {
        ZStack {
            TabView {
                ContentView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Today")
                    }
                
                LazyGridd2()
                    .tabItem {
                        Image(systemName: "square.grid.3x2.fill")
                        Text("LazyH")
                    }
                
                MatchedView()
                    .tabItem {
                        Image(systemName: "scroll.fill")
                        Text("Peek")
                    }
            }
            .accentColor(.black)
            }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
