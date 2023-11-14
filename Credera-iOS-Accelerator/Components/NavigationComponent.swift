//
//  NavigationComponent.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 8/23/23.
//
import SwiftUI

struct NavigationComponent: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeScreen()
                .tabItem {
                    Image(systemName: "house.fill").renderingMode(.template)
                    Text("Home")
                }
                .tag(0)
            SearchScreen()
                .tabItem {
                    Image(systemName: "magnifyingglass").renderingMode(.template)
                    Text("Search")
                }
                .tag(1)
        }.accentColor(Constants.ColorScheme.crederaRed)
    }
}

struct NavigationComponentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationComponent()
    }
}
