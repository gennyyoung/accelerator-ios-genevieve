//
//  SinglePageView.swift
//  Credera-iOS-Accelerator
//
//  Created by Amanda Nisenbaum on 11/20/23.
//

import SwiftUI

struct SinglePageView: View {
    @EnvironmentObject private var themeManager : ThemeManager

    var body: some View {
        VStack {
            Text("Main Single Page App").font(themeManager.selectedTheme.subtitle)
        }

    }
}
