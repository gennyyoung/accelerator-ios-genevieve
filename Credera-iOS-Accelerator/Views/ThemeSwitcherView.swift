//
//  ThemeSwitcherScreen.swift
//  Credera-iOS-Accelerator
//
//  Created by Amanda Nisenbaum on 11/14/23.
//

import SwiftUI

struct ThemeSwitcherView: View {
    
    @EnvironmentObject private var themeManager:ThemeManager
    
    var body: some View {
            VStack{
                Text("\(themeManager.selectedTheme.themeName) is selected")
                ForEach(0..<themeManager.themes.count, id: \.self){themeCount in
                    Button(action: {
                        withAnimation{
                            themeManager.applyTheme(themeCount)
                        }
                    }, label: {
                        Text("Change to \(themeManager.themes[themeCount].themeName)")
                    })
                }
                .buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
                Text("Secondary Color")
                    .foregroundStyle(themeManager.selectedTheme.secondaryColor)
            }
    }
}

struct ThemeSwitcherView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeSwitcherView()
    }
}
