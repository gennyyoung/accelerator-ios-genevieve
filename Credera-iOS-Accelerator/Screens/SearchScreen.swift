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
    @State private var isNavigationActive = false
    
    var body: some View {
        CustomNavBar(
            title: "Credera iOS Accelerator",
            content:
                VStack(spacing: 20) {
                    NavigationLink(destination: SampleTableView()) {
                        Text("Sample Table View")
                    }.buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
                    NavigationLink(destination: SampleCollectionView()) {
                        Text("Sample Collection View")
                    } .buttonStyle(themeManager.selectedTheme.primaryButtonStyle)

                    NavigationLink(destination: SampleScrollView()) {
                        Text("Sample Scroll View")
                    } .buttonStyle(themeManager.selectedTheme.primaryButtonStyle)

                    NavigationLink(destination: SampleStackView()) {
                        Text("Sample Stack View")
                    } .buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
                }, hide: false)
    }

}

//struct RedButtonStyle: ButtonStyle {
//    func makeBody(configuration: Configuration) -> some View {
//        configuration.label
//            .font(.headline)
//            .foregroundColor(.white)
//            .padding(10)
//            .background(Constants.ColorScheme.crederaRed)
//            .cornerRadius(10)
//    }
//}
