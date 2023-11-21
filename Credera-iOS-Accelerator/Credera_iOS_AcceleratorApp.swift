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
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some Scene {
        WindowGroup {
            ContentScreen()
                .environmentObject(themeManager)
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
