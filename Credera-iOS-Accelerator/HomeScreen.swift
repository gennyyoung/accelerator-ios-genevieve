//
//  HomeView.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 8/29/23.
//

import Foundation
import SwiftUI

struct HomeScreen: View {
    @ObservedObject var movieVM = MoviewViewModel()
    @EnvironmentObject private var themeManager : ThemeManager

    var body: some View {
        NavigationView {
            VStack(){
                HeaderComponent(title: "Credera iOS Accelerator")
                Spacer()
                Text("MainTabBarApp: FirstViewController").font(.headline)
                    .multilineTextAlignment(.center)
                NavigationLink(destination: IntermediateView().navigationTitle("Intermediate View")) {
                    Text("Navigate to Next screen")
                }.buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
                NavigationLink(destination: ThemeSwitcherView()) {
                    Text("Navigate to Theme Switcher")
                }.buttonStyle(themeManager.selectedTheme.primaryButtonStyle)     
                Spacer()
            }
        }
    }

}
struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
