//
//  NavigationComponent.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 8/23/23.
//
import SwiftUI

struct NavigationComponent: View {
    @State private var selectedTab = 0
    
    @EnvironmentObject private var themeManager : ThemeManager

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeScreen()
                .tabItem {
                    Image(systemName: "house.fill")
                        .foregroundColor(Constants.ColorScheme.crederaRed)
                    Text("Home")
                        
                }
                .tag(0)
            IntermediateScreen()
            SearchScreen()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color.red)
                    Text("Search")
                }
                .tag(1)
        }
    }
}
