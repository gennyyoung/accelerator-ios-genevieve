//
//  ThemeCollection.swift
//  Credera-iOS-Accelerator
//
//  Created by Amanda Nisenbaum on 11/14/23.
//

import Foundation
import SwiftUI

final class PrimaryTheme: Theme{
    var primaryColor: Color = Color("PrimaryColor")
    
    var secondaryColor: Color = Color("SecondaryColor")
    
    var labelColor: Color = Color("LabelColor")
    
    var backgroundColor: Color = Color("BackgroundColor")

    var themeName: String = "Primary Theme"
    
    var primaryButtonStyle: CustomButtonStyle {return CustomButtonStyle(backgroundColor: primaryColor, labelColor: labelColor)}
    
    var secondaryButtonStyle: CustomButtonStyle {return CustomButtonStyle(backgroundColor: secondaryColor, labelColor: labelColor)}
    
}

final class SecondaryTheme: Theme{
    var primaryColor: Color = Color("2-PrimaryColor")
    
    var secondaryColor: Color = Color("2-SecondaryColor")
    
    var labelColor: Color = Color("2-LabelColor")
    
    var backgroundColor: Color = Color("BackgroundColor")
    
    var themeName: String = "Secondary Theme"
    
    var primaryButtonStyle: CustomButtonStyle {return CustomButtonStyle(backgroundColor: primaryColor, labelColor: labelColor)}
    
    var secondaryButtonStyle: CustomButtonStyle {return CustomButtonStyle(backgroundColor: secondaryColor, labelColor: labelColor)}
    
}

struct CustomButtonStyle: ButtonStyle {
    var backgroundColor: Color
    var labelColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 300)
            .font(.headline)
            .foregroundColor(labelColor)
            .padding(10)
            .background(backgroundColor)
            .cornerRadius(8)
    }
}

