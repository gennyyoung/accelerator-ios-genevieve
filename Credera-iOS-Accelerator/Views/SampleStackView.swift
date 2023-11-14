//
//  SampleStackView.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 8/23/23.
//

import Foundation
import SwiftUI

struct SampleStackView: View {
    @EnvironmentObject private var themeManager : ThemeManager
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("Title")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text(
                "Body Text Goes Here. This is a longer text to demonstrate text wrapping in SwiftUI."
            )
            .font(.body)
            .multilineTextAlignment(.center)

            HStack(spacing: 10) {
                Image("AppLogo")
                    .resizable()
                    .frame(width: 80, height: 80)
                Image("AppLogo")
                    .resizable()
                    .frame(width: 80, height: 80)
                Image("AppLogo")
                    .resizable()
                    .frame(width: 80, height: 80)
            }
            Button(action: {
                // Action to perform when the button is tapped
                print("Button Tapped")
            }) {
                Text("Tap Me")
            }.buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
        }
    }
}
