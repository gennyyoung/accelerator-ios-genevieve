//
//  SearchScreen.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 9/6/23.
//

import Foundation
import SwiftUI

struct SearchScreen: View {
    @State private var isNavigationActive = false
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                HeaderComponent(title: "Credera iOS Accelerator")
                Spacer()
                NavigationLink(destination: SampleTableView().navigationTitle("Sample Table View")) {
                    Text("Sample Table View")
                        .modifier(CustomButtonStyle())
                }
                NavigationLink(destination: SampleCollectionView().navigationTitle("Sample Collection View")) {
                    Text("Sample Collection View")
                        .modifier(CustomButtonStyle())
                }
                NavigationLink(destination: SampleScrollView().navigationTitle("Sample Scroll View")) {
                    Text("Sample Scroll View")
                        .modifier(CustomButtonStyle())
                }
                NavigationLink(destination: SampleStackView().navigationTitle("Sample Stack View")) {
                    Text("Sample Stack View")
                        .modifier(CustomButtonStyle())
                }
                Spacer()
            }
            .navigationBarHidden(true) // Hide the default navigation bar
        }
    }

}

struct CustomButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.leading, 20)
            .padding(.trailing, 20)
            .padding(.top, 12)
            .padding(.bottom, 12)
            .background(Constants.ColorScheme.crederaRed)
            .foregroundColor(.white)
            .font(.subheadline)
            
    }
}

struct SearchScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchScreen()
    }
}
