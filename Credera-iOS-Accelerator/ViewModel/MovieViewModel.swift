//
//  MovieViewModel.swift
//  Credera-iOS-Accelerator
//
//  Created by Swathi Banaganapalli on 09/10/23.
//

import Foundation

class MoviewViewModel: ObservableObject {

    @Published var episodes: [Episodes1]?

    init() {
        Task.init {
            await fetchEpisodes()
        }
    }

    func fetchEpisodes() async {
        MovieService().getEpisodes { result in
            //               print("result..........",result)

            switch result {

            case .success(let season):
                DispatchQueue.main.async {
                    self.episodes = season
                }
            case .failure(_):
                print("Error fetchSeasons")
            }
        }

    }

}
