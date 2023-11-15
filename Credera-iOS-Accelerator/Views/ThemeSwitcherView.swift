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
        VStack(alignment: .center){
                Text("\(themeManager.selectedTheme.themeName) is selected").foregroundStyle(themeManager.selectedTheme.primaryColor).font(themeManager.selectedTheme.title)
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
                Text("Secondary color in theme")
                    .foregroundStyle(themeManager.selectedTheme.secondaryColor).font(themeManager.selectedTheme.title)
            }
    }
}

struct ThemeSwitcherView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeSwitcherView()
            .environmentObject(ThemeManager())
    }
}
