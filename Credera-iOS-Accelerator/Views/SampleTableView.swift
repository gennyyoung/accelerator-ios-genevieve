//
//  SampleTableView.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 8/23/23.
//

import SwiftUI

struct SampleTableView: View {
    @ObservedObject var movieVM = MoviewViewModel()

    var body: some View {
        VStack {
            if let episodes = movieVM.episodes {
                List(episodes, id: \.self) { episode in
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 10.0)
                            .fill(Color.teal)
                            .frame(height: 100)
                        VStack(alignment: .leading) {
                            HStack {
                                Text(episode.Title)
                                    .font(
                                        .system(size: 16, weight: .bold, design: .default)
                                    )
                                    .foregroundColor(.white)
                                    .lineLimit(2)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text(episode.Episode)
                                    .font(
                                        .system(size: 16, weight: .bold, design: .default)
                                    )
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                            }
                            Text("Released : " + episode.Released)
                                .font(.system(size: 16, weight: .bold, design: .default))
                                .foregroundColor(.white)
                                .padding(.top)
                        }.padding(.horizontal)
                        Spacer()
                    }.listRowSeparator(.hidden)
                }.background(Color.clear)
                    .listStyle(PlainListStyle())
            } else {
                Text("No data available")
            }
        }
    }

}
struct SampleTableView_Previews: PreviewProvider {
    static var previews: some View {
        SampleTableView()
    }
}
