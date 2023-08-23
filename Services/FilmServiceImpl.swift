////
////  FilmServiceImpl.swift
////  Credera-iOS
////
////  Created by Fernando Berrios on 8/5/19.
////  Copyright © 2019 Credera. All rights reserved.
////
//
//import Foundation
////import Promises
//
//class FilmServiceImpl: FilmService {
//    
////    let moviesApi: MoviesApi
////    let tvSeriesApi: TvSeriesApi
////
////    init(moviesApi: MoviesApi, tvSeriesApi: TvSeriesApi) {
////        self.moviesApi = moviesApi
////        self.tvSeriesApi = tvSeriesApi
////    }
//    
//    let moviesApi: MoviesApi
//    
//    init(moviesApi: MoviesApi) {
//        self.moviesApi = moviesApi
//    }
//    
//    func lookupById(id: String, plot: FilmPlot?) -> Promise<Movie> {
//        return moviesApi.lookup(id: id, title: "", year: nil, plot: mapToString(plot)).then { movie in
//            if self.hasError(apiModel: movie) {
//                return Promise(self.mapToError(error: movie.Error))
//            }
//            
//            return Promise(self.mapToMovie(movie))
//        }.catch { error in
//            print(error)
//        }
//    }
//    
//    func lookupByTitle(title: String, year: Int?, plot: FilmPlot?) -> Promise<Movie> {
//    
//        // Crappy conversion of nullable Int to nullable String
//        let y: String? = year == nil ? nil : String(year!)
//        
//        return moviesApi.lookup(id: "", title: title, year: y, plot: mapToString(plot)).then { movie in
//            if self.hasError(apiModel: movie) {
//                return Promise(self.mapToError(error: movie.Error))
//            }
//            
//            return Promise(self.mapToMovie(movie))
//        }.catch { error in
//            print(error)
//        }
//    }
//    
//    func searchMovie(title: String) -> Promise<[SearchResult]> {
//        return self.searchMovie(title: title, page: 1)
//    }
//    
//    func searchMovie(title: String, page: Int) -> Promise<[SearchResult]> {
//        return moviesApi.search(title: title, year: nil, page: page).then { results in
//            if self.hasError(apiModel: results) {
//                return Promise(self.mapToError(error: results.Error))
//            }
//            
//            // Sort by Year
//            let sr = self.mapToSearchResults(results).sorted(by: { $0.year < $1.year })
//            
//            return Promise(sr)
//        }.catch { error in
//            print(error)
//        }
//    }
//    
//    // MARK: - Private Methods
//    
//    private func hasError(apiModel: OmdbApiModel) -> Bool {
//        return apiModel.Response == "False"
//    }
//    
//    private func mapToError(error: String?) -> FilmServiceError {
//        switch error {
//        case "Movie not found!":
//            return FilmServiceError.MovieNotFound
//        default:
//            return FilmServiceError.Unknown
//        }
//    }
//    
//    private func mapToString(_ plot: FilmPlot?) -> String {
//        var output: String
//        
//        switch plot {
//        case .short?:
//            output = "short"
//        case .full?:
//            output = "full"
//        default:
//            output = "full"
//        }
//        
//        return output
//    }
//    
//    private func mapToMovie(_ model: MovieApiModel) -> Movie {
//        
//        let actors: [String] = model.Actors?.components(separatedBy: ",") ?? []
//        let genres: [String] = model.Genre?.components(separatedBy: ",") ?? []
//        let writers: [String] = model.Writer?.components(separatedBy: ",") ?? []
//        
//        let posterUrl: String? = model.Poster == "N/A" ? nil : model.Poster
//        
//        return Movie(
//            title: model.Title ?? "",
//            year: model.Year ?? "",
//            rated: model.Rated ?? "",
//            released: model.Released ?? "",
//            runtime: model.Runtime ?? "",
//            director: model.Director ?? "",
//            plot: model.Plot ?? "",
//            language: model.Language ?? "",
//            country: model.Country ?? "",
//            actors: actors,
//            genres: genres,
//            writers: writers,
//            awards: model.Awards ?? "",
//            poster: posterUrl,
//            metascore: model.Metascore ?? "",
//            imdbRating: model.imdbRating ?? "",
//            imdbVotes: model.imdbVotes ?? "",
//            imdbID: model.imdbID ?? "",
//            boxOffice: model.BoxOffice ?? "",
//            production: model.Production ?? "",
//            website: model.Website ?? ""
//        )
//    }
//    
//    private func mapToSearchResults(_ model: SearchApiModel) -> [SearchResult] {
//        var output: [SearchResult] = []
//        for m in model.Search ?? [] {
//            
//            let posterUrl: String? = m.Poster == "N/A" ? nil : m.Poster
//            let year = Int(m.Year ?? "")
//            
//            let sr = SearchResult(
//                imdbID: m.imdbID ?? "",
//                title: m.Title ?? "",
//                year: year ?? 0,
//                poster: posterUrl
//            )
//            
//            output.append(sr)
//        }
//        
//        return output
//    }
//}
