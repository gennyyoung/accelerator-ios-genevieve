//
//  Constants.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 8/23/23.
//

import Foundation
import SwiftUI

struct Constants {
    enum TabBarScreens: Int {
        case first = 0
        case second = 1
    }

    struct ColorScheme {
        static let primary = Color(red: 10/255, green: 74/255, blue: 88/255)
        static let secondary = Color(red: 2/255, green: 181/255, blue: 173/255)
        static let tertiary = Color(red: 245/255, green: 231/255, blue: 210/255)
        static let quaternary = Color.black
        static let crederaRed = Color(red: 194/255, green: 31/255, blue: 50/255)
        static let midnightBlack = Color(red: 58/255, green: 58/255, blue: 58/255)
    }
}
