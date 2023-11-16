//
//  HomeView.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 8/29/23.
//

import Foundation
import SwiftUI

enum Route {
    case intermediateView
    case finalView
}

struct HomeScreen: View {
    @ObservedObject var movieVM = MoviewViewModel()
    @EnvironmentObject private var themeManager : ThemeManager

    // Array of Routes where the last Route is the view that is displayed
    @State private var navigationPath: [Route] = []

    var body: some View {
        NavigationStack(path: $navigationPath) {
            VStack(){
                HeaderComponent(title: "Credera iOS Accelerator")
                Spacer()
                Text("MainTabBarApp: FirstViewController").font(.headline)
                    .multilineTextAlignment(.center)
                Button("Navigate to Next Screen") {
                    navigationPath.append(.intermediateView)
                }.buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
                
                NavigationLink(destination: ThemeSwitcherView()) {
                    Text("Navigate to Theme Switcher")
                }.buttonStyle(themeManager.selectedTheme.primaryButtonStyle)     
                Spacer()
            }
            .navigationDestination(for: Route.self) { route in
                switch route {
                case .intermediateView:
                    IntermediateView(navigationPath: $navigationPath)
                case .finalView:
                    FinalView(navigationPath: $navigationPath)
                }
            }
        }
    }

}
struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
            .environmentObject(ThemeManager())
    }
}
