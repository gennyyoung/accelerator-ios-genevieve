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

        CustomNavBar(
            title: "Credera iOS Accelerator",
            content: VStack(spacing: 20) {

                Text("MainTabBarApp:FristViewController").font(.headline)
                    .multilineTextAlignment(.center)
                NavigationLink(destination: IntermediateScreen()) {
                    Text("Navigate to Next screen")
                }.navigationBarBackButtonHidden(false)
                    .buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
                NavigationLink(destination: ThemeSwitcherView()) {
                    Text("Navigate to Theme Switcher")
                }.navigationBarBackButtonHidden(false)
                    .buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
                
            }, hide: false)
    }

}
struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
