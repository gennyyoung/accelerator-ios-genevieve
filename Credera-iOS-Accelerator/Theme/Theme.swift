//
//  Theme.swift
//  Credera-iOS-Accelerator
//
//  Created by Amanda Nisenbaum on 11/14/23.
//

import SwiftUI

protocol Theme : Typography{
    var primaryColor : Color {get set}
    var secondaryColor : Color {get set}
    var labelColor: Color {get set}
    var backgroundColor: Color {get set}
    var themeName : String {get set}
    var primaryButtonStyle : CustomButtonStyle {get}
    var secondaryButtonStyle : CustomButtonStyle {get}
}

protocol Typography{
    var title: Font {get set}
    var subtitle: Font {get set}
    var body: Font {get set}
}
