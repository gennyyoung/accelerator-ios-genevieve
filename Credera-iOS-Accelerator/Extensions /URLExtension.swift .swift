//
//  URLExtension.swift .swift
//  Credera-iOS-Accelerator
//
//  Created by Swathi Banaganapalli on 09/10/23.
//

import Foundation
extension URL {
    static func movieURL() -> URL? {
        guard let url = URL(string: "https://www.omdbapi.com/?t=Batman&Season=1&apikey=82efc171") else {
            return nil
        }
        return url
    }
}
