//
//  ContentScreen.swift
//  Credera-iOS-Accelerator
//
//  Created by Amanda Nisenbaum on 11/20/23.
//

import SwiftUI

/// Content Screen will display either Tab View or Single Page View depending on the info.plist value
/// It is called in main
struct ContentScreen: View {
    private var isTabViewMode: Bool {
        // Get the value from info.plist
        // Make sure the `forInfoDicitonaryKey` matches your key
        Bundle.main.object(forInfoDictionaryKey: "StoryboardTabMode") as? Bool ?? false
    }
    
    var body: some View {
        if isTabViewMode {
            // Load Tab View
            NavigationComponent()
        } else {
            // Load SinglePageView
            SinglePageView()
        }
    }
}

#Preview {
    ContentScreen()
}
