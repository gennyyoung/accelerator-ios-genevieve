//
//  Movie.swift
//  Credera-iOS
//
//  Created by Fernando Berrios on 8/5/19.
//  Copyright © 2019 Credera. All rights reserved.
//

import Foundation

// MARK: - Movie
struct Movie {
    let title, year, rated, released: String
    let runtime, director: String
    let plot, language, country: String
    let actors, genres, writers: [String]
    let awards: String
    let poster: String?
    let metascore, imdbRating, imdbVotes, imdbID: String
    let boxOffice, production: String
    let website: String
}
