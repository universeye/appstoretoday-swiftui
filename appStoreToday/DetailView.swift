//
//  DetailView.swift
//  appStoreToday
//
//  Created by Terry Kuo on 2021/2/19.
//

import SwiftUI
import SwiftUIX

struct DetailView: View {
    var namespace: Namespace.ID
    @State var appear = false
    
    var body: some View {
        VStack (spacing: 16) {
            VStack(spacing: 0) {
                Text("App of the day".uppercased())
                    
                    .foregroundColor(Color.black)
                    .font(.largeTitle).bold()
                    .matchedGeometryEffect(id: "title", in: namespace)
                    .frame(maxWidth: 150, maxHeight: 380, alignment: .topLeading)
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
                }
                .frame(maxWidth: .infinity)
                .padding(12)
                .background(VisualEffectBlurView(blurStyle: .systemMaterialDark))
                .matchedGeometryEffect(id: "bottonBar", in: namespace)
            }
            .frame(maxWidth: .infinity, maxHeight: 600)
            .background(
                Image(uiImage: #imageLiteral(resourceName: "efe-kurnaz-RnCPiXixooY-unsplash"))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .matchedGeometryEffect(id: "image", in: namespace))
            .mask(
                RoundedRectangle(cornerRadius: 0, style: .continuous)
                    .matchedGeometryEffect(id: "shape", in: namespace)
            )
            .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
            
            ScrollView {
                Text("Color is a great way to impart vitality, provide visual continuity, communicate status information, give feedback in response to user actions, and help people visualize data. Look to the system’s color scheme for guidance when picking app tint colors that look great individually and in combination, on both light and dark backgrounds.")
                    .padding()
                    .offset(y: appear ? 0 : -300)
                    .onAppear {
                        appear = true
                    }
                    .onDisappear {
                        appear = false
                }
            }
            .frame(maxHeight: 100)
            
           //Spacer()
        }
        .ignoresSafeArea()
    }
}

struct DetailView_Previews: PreviewProvider {
    @Namespace static var namespace
    
    static var previews: some View {
        DetailView(namespace: namespace)
    }
}
