//
//  MovieModel.swift
//  Credera-iOS-Accelerator
//
//  Created by Swathi Banaganapalli on 09/10/23.
//

import Foundation

struct MovieModel: Codable {
    let Episodes: [Episodes1]
}

struct Episodes1: Codable,Hashable {
    
        let Title: String
        let Episode :String
        let Released:String
}
