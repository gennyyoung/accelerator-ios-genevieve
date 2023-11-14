//
//  ThemeManager.swift
//  Credera-iOS-Accelerator
//
//  Created by Amanda Nisenbaum on 11/14/23.
//

import SwiftUI

class ThemeManager: ObservableObject{
    
    // Store the selected theme by the user
    @AppStorage("selectedTheme") var themeSelected = 0
    
    static let shared = ThemeManager()
    public var themes: [Theme] = [PrimaryTheme(), SecondaryTheme()]
    @Published var selectedTheme: Theme = PrimaryTheme()
    
    init(){
        getTheme()
    }
    
    public func applyTheme(_ theme: Int){
        selectedTheme = self.themes[theme]
    }
    
    func getTheme(){
        self.selectedTheme = self.themes[themeSelected]
    }
}
