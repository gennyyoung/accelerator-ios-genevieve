//
//  ThemeSwitcherScreen.swift
//  Credera-iOS-Accelerator
//
//  Created by Amanda Nisenbaum on 11/14/23.
//

import SwiftUI

struct ThemeSwitcherView: View {
    
    @EnvironmentObject private var themeManager:ThemeManager
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Select Your Theme:").font(themeManager.selectedTheme.title).padding(.all, 10)
            ForEach(0..<themeManager.themes.count, id: \.self){themeCount in
                let currentTheme = themeManager.themes[themeCount].themeName
                Button(action: {
                    withAnimation{
                        themeManager.applyTheme(themeCount)
                    }
                }, label: {
                    Text("\(themeManager.selectedTheme.themeName == currentTheme ? "\(currentTheme) is selected" : "Change to \(currentTheme)")")
                }
            )
            }
            .buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
            
            // List of the theme items
            ThemeColorList(color: themeManager.selectedTheme.primaryColor, label: "Primary Color")
            ThemeColorList(color: themeManager.selectedTheme.secondaryColor, label: "Secondary Color")
            ThemeColorList(color: themeManager.selectedTheme.backgroundColor, label: "Background Color")
            ThemeColorList(color: themeManager.selectedTheme.labelColor, label: "Label Color")
            
            HStack{
                Text("Change to \(isDarkMode ? "Light Mode" : "Dark Mode")").font(themeManager.selectedTheme.subtitle)
                    .foregroundColor(isDarkMode ? .white : Constants.ColorScheme.midnightBlack)
                Button(action: {
                    isDarkMode.toggle()
                }) {
                    Image(systemName: isDarkMode ? "moon.circle.fill" : "sun.max.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(10)
                        .foregroundColor(.white)
                        .background(Color("IconColor"))
                        .cornerRadius(20)
                }
            }.padding(.leading, 10)
        }.padding().navigationBarTitle(Text("Theme View"))
    }
}

struct ThemeColorList: View {
    @EnvironmentObject private var themeManager:ThemeManager

    var color: Color
    var label: String
    
    var body: some View {
        HStack(alignment: .center){
            RoundedRectangle(cornerRadius: 2).stroke(lineWidth: 2).overlay(color)
                .frame(width: 20, height: 20)
            Text(label).font(themeManager.selectedTheme.body)
        }.padding([.leading, .top], 10)
    }
}

struct ThemeSwitcherView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeSwitcherView()
            .environmentObject(ThemeManager())
    }
}
