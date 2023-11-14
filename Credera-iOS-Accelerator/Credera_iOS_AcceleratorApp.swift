//
//  Credera_iOS_AcceleratorApp.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 8/17/23.
//

import SwiftUI

@main
struct Credera_iOS_AcceleratorApp: App {
    @StateObject var themeManager = ThemeManager()

    var body: some Scene {
        WindowGroup {
            NavigationComponent()
                .environmentObject(themeManager)
        }
    }
}
