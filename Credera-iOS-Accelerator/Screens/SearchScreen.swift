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
                Group{
                    Text("Sample Views:").font(.system(size: 15, weight: .bold))
                    NavigationLink(destination: SampleTableView().navigationTitle("Sample Table View")) {
                        Text("Table View")
                    }.buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
                    NavigationLink(destination: SampleCollectionView().navigationTitle("Sample Collection View")) {
                        Text("Collection View")
                    }.buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
                    NavigationLink(destination: SampleScrollView().navigationTitle("Sample Scroll View")) {
                        Text("Scroll View")
                    }.buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
                    NavigationLink(destination: SampleStackView().navigationTitle("Sample Stack View")) {
                        Text("Stack View")
                    }.buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
                }
                Spacer()
                Group{
                    Text("Sample Components:").font(.system(size: 15, weight: .bold))
                    NavigationLink(destination: RadioView().navigationTitle("Radio Component")) {
                        Text("Radio Component")
                    }.buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
                    NavigationLink(destination: FormView().navigationTitle("Form Component")) {
                        Text("Form Component")
                    }.buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
                    NavigationLink(destination: QRView().navigationTitle("QR Scanner Component")) {
                        Text("QR Scanner Component")
                    }.buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
                    NavigationLink(destination: FilterView().navigationTitle("Filter Component")) {
                        Text("Filter Component")
                    }.buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
                }
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
