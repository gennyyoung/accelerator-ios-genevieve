//
//  FinalScreen.swift
//  Credera-iOS-Accelerator
//
//  Created by Swathi Banaganapalli on 14/09/23.
//

import SwiftUI

struct FinalScreen: View {
    @EnvironmentObject private var themeManager:ThemeManager

    var body: some View {
        CustomNavBar(
            title: "Credera iOS Accelerator",
            content:
                VStack(spacing: 20) {

                    NavigationLink(destination: HomeScreen()) {
                        VStack(spacing: 20) {
                            Text("Navigate to first view")
                                .buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
                        }

                    }

                    Text("This is an example of passing information from one VC to another")
                        .padding(
                            .trailing, 55
                        )
                        .padding(.leading, 50).font(.headline)
                        .multilineTextAlignment(.center)
                        .frame(width: 300)
                }, hide: true
        )

    }
}

struct FinalScreen_Previews: PreviewProvider {
    static var previews: some View {
        FinalScreen()
    }
}
