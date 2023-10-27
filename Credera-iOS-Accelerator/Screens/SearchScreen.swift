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
        CustomNavBar(
            title: "Credera iOS Accelerator",
            content:
                VStack(spacing: 20) {
                    NavigationLink(destination: SampleTableView()) {
                        Text("Sample Table View")
                            .buttonStyle(RedButtonStyle())
                    }
                    NavigationLink(destination: SampleCollectionView()) {
                        Text("Sample Collection View")
                            .buttonStyle(RedButtonStyle())
                    }

                    NavigationLink(destination: SampleScrollView()) {
                        Text("Sample Scroll View")
                            .buttonStyle(RedButtonStyle())
                    }

                    NavigationLink(destination: SampleStackView()) {
                        Text("Sample Stack View")
                            .buttonStyle(RedButtonStyle())
                    }
                }, hide: false)
    }

}

struct RedButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.headline)
            .foregroundColor(.white)
            .padding(10)
            .background(Constants.ColorScheme.crederaRed)
            .cornerRadius(10)
    }
}
