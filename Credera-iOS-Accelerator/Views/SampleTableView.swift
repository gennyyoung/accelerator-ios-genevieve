//
//  SampleTableView.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 8/23/23.
//

import SwiftUI

struct SampleTableView: View {
    @EnvironmentObject private var themeManager : ThemeManager
    @ObservedObject var movieVM = MoviewViewModel()
    
    var body: some View {
        if let episodes = movieVM.episodes {
            List(episodes, id: \.self) { episode in
                VStack(alignment: .leading) {
                    Spacer()
                        Text("Episode \(episode.Episode): " + episode.Title)
                        .font(themeManager.selectedTheme.subtitle)
                            .lineLimit(2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Released: " + episode.Released)
                        .font(themeManager.selectedTheme.body)
                    Spacer()
                }
            }
        } else {
            Text("No data available")
        }
    }
}

struct SampleTableView_Previews: PreviewProvider {
    static var previews: some View {
        SampleTableView()
    }
}
