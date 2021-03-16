//
//  ContentView.swift
//  appStoreToday
//
//  Created by Terry Kuo on 2021/2/19.
//

import SwiftUI
import SwiftUIX

struct ContentView: View {
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            if show == false {
                VStack (spacing: 16) {
                    Text("Today")
                        .font(.largeTitle).bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    AppofTheDayCard()
                    
                    Spacer()
                }
                .padding(20)
            } else {
                DetailView(namespace: namespace)
            }
        }
        .animation(.spring())
        .onTapGesture {
            show.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AppofTheDayCard: View {
    @Namespace var namespace
    
    var body: some View {
        VStack(spacing: 0) {
            Text("App of the day".uppercased())
                .foregroundColor(Color.white)
                .font(.largeTitle).bold()
                .matchedGeometryEffect(id: "title", in: namespace)
                .frame(maxWidth: 150, maxHeight: .infinity, alignment: .bottomLeading)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                .padding()
            
            HStack {
                Image(uiImage: #imageLiteral(resourceName: "Logo"))
                    .frame(width: 36, height: 36)
                    .cornerRadius(10)
                    .matchedGeometryEffect(id: "logo", in: namespace)
                VStack(alignment: .leading, spacing: 4) {
                    Text("Design Code")
                        .font(.body).bold()
                        .matchedGeometryEffect(id: "appName", in: namespace)
                    Text("Learn SwiftUI,UI Design and React")
                        .font(.caption)
                        .matchedGeometryEffect(id: "appDescrip", in: namespace)
                }
                .foregroundColor(Color.white)
                Spacer()
            } //HStack
            .frame(maxWidth: .infinity)
            .padding(12)
            .background(VisualEffectBlurView(blurStyle: .systemMaterialDark))
            .matchedGeometryEffect(id: "bottonBar", in: namespace)
        }
        .frame(maxWidth: .infinity, maxHeight: 335)
        .background(
            Image(uiImage: #imageLiteral(resourceName: "efe-kurnaz-RnCPiXixooY-unsplash"))
                
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: "image", in: namespace))
        .clipShape(
            RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
    }
}
