//
//  WeatherService.swift
//  Credera-iOS-Accelerator
//
//  Created by Swathi Banaganapalli on 09/10/23.
//

import Foundation

enum NetworkError : Error {
    case BadURL
    case NoData
    case DecodingError
}

class MovieService {
    func getEpisodes(completion : @escaping(Result<[Episodes1]?,NetworkError>) -> Void){
        guard let url = URL.movieURL() else {
            return completion(.failure(.BadURL))
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return completion(.failure(.NoData))
            }
            let episodesResponse = try? JSONDecoder().decode(MovieModel.self, from: data)
//            print("movieResponse..........",episodesResponse as Any,data)

            if let episodesResponse = episodesResponse {
                completion(.success(episodesResponse.Episodes))
            } else {
                completion(.failure(.DecodingError))
            }
        }.resume()
    }
}
