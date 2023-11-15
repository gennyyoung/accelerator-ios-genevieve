//
//  SearchScreen.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 9/6/23.
//

import Foundation
import SwiftUI

struct SearchScreen: View {
    @EnvironmentObject private var themeManager: ThemeManager
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                HeaderComponent(title: "Credera iOS Accelerator")
                Spacer()
                NavigationLink(destination: SampleTableView().navigationTitle("Sample Table View")) {
                    Text("Sample Table View")
                }.buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
                NavigationLink(destination: SampleCollectionView().navigationTitle("Sample Collection View")) {
                    Text("Sample Collection View")                    
                }.buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
                NavigationLink(destination: SampleScrollView().navigationTitle("Sample Scroll View")) {
                    Text("Sample Scroll View")
                }.buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
                NavigationLink(destination: SampleStackView().navigationTitle("Sample Stack View")) {
                    Text("Sample Stack View")                    
                }.buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
                Spacer()
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

 struct SearchScreen_Previews: PreviewProvider {
     static var previews: some View {
         SearchScreen()
             .environmentObject(ThemeManager())
     }
 }
