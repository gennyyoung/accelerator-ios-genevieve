//
//  ThemeCollection.swift
//  Credera-iOS-Accelerator
//
//  Created by Amanda Nisenbaum on 11/14/23.
//

import Foundation
import SwiftUI

// Declare themes here
// These colors are fetched in "Assets"
final class PrimaryTheme: Theme{
    
    var primaryColor: Color = Color("PrimaryColor")
    
    var secondaryColor: Color = Color("SecondaryColor")
    
    var labelColor: Color = Color("LabelColor")
    
    var backgroundColor: Color = Color("BackgroundColor")

    var themeName: String = "Primary Theme"
    
    var primaryButtonStyle: CustomButtonStyle {return CustomButtonStyle(backgroundColor: primaryColor, labelColor: labelColor)}
    
    var secondaryButtonStyle: CustomButtonStyle {return CustomButtonStyle(backgroundColor: secondaryColor, labelColor: labelColor)}
    
    var title: Font = .custom(CustomTitle.fontName, size: CustomTitle.fontSize)
    
    var subtitle: Font = .custom(CustomSubtitle.fontName, size: CustomSubtitle.fontSize)
    
    var body: Font = .custom(CustomBody.fontName, size: CustomBody.fontSize)
}

final class SecondaryTheme: Theme{
    
    var primaryColor: Color = Color("2-PrimaryColor")
    
    var secondaryColor: Color = Color("2-SecondaryColor")
    
    var labelColor: Color = Color("2-LabelColor")
    
    var backgroundColor: Color = Color("BackgroundColor")
    
    var themeName: String = "Secondary Theme"
    
    var primaryButtonStyle: CustomButtonStyle {return CustomButtonStyle(backgroundColor: primaryColor, labelColor: labelColor)}
    
    var secondaryButtonStyle: CustomButtonStyle {return CustomButtonStyle(backgroundColor: secondaryColor, labelColor: labelColor)}
    
    var title: Font = .custom(CustomTitle.fontName, size: CustomTitle.fontSize)
    
    var subtitle: Font = .custom(CustomSubtitle.fontName, size: CustomSubtitle.fontSize)
    
    var body: Font = .custom(CustomBody.fontName, size: CustomBody.fontSize)
}

// Declare custom button style
struct CustomButtonStyle: ButtonStyle {
    var backgroundColor: Color
    var labelColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 300)
            .font(.subheadline)
            .foregroundColor(labelColor)
            .padding(10)
            .background(configuration.isPressed ? Color.clear : backgroundColor)    
            .cornerRadius(8)
        
    }
}


/*
 To use custom fonts, you will have to add them to Info.plist.
 Add new fonts to "Fonts provided by application".
 Add the full name of your font file and the extension
 */
struct CustomTitle {
    static let fontName = "TiemposHeadline-Black"
    static let fontSize: CGFloat = 16
}

struct CustomSubtitle {
    static let fontName = "Lato-Black"
    static let fontSize: CGFloat = 14
}

struct CustomBody {
    static let fontName = "Lato-Regular"
    static let fontSize: CGFloat = 12
}

