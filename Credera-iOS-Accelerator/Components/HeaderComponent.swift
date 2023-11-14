//
//  HeaderComponent.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 8/17/23.
//

import SwiftUI

struct HeaderComponent: View {
    let title: String
    
    var body: some View {
        HStack {
            Image("AppLogo")
                .resizable()
                .frame(width: 50, height: 50)
            Text(title)
                .font(Font.custom("AvenirNext-DemiBold", size: 17.0))
                .foregroundColor(Constants.ColorScheme.quaternary)
                .padding(.leading, -8)
        }
    }
}

struct HeaderComponent_Previews: PreviewProvider {
    static var previews: some View {
        HeaderComponent(title: "Credera iOS Accelerator")
    }
}


//
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        NavigationView {
//            VStack(spacing: 20) {
//                HeaderComponent(title: "Credera iOS Accelerator")
//                Spacer()
//                NavigationLink(destination: SampleScrollView().navigationTitle("Detail View")) {
//                    Text("Go to First View")
//                        .padding()
//                        .background(Constants.ColorScheme.crederaRed)
//                        .foregroundColor(.white)
//                }.navigationBarTitleDisplayMode(.inline)
//
//                NavigationLink(destination: SampleScrollView()) {
//                    Text("Go to Second View")
//                        .padding()
//                        .background(Color.green)
//                        .foregroundColor(.white)
//                        .cornerRadius(8)
//                }
//                Spacer()
//            }
//            .navigationBarHidden(true) // Hide the default navigation bar
//        }
//    }
//}
//
