//
//  SampleCollectionView.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 8/23/23.
//

import SwiftUI

struct SampleCollectionView: View {
    let data = (1...20).map { $0 }  // Sample data

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [
                GridItem(.adaptive(minimum: 80))  // Adjust minimum width as needed
            ]) {
                ForEach(data, id: \.self) { item in
                    GridItemView(item: item)
                }
            }
            .padding()
        }
    }
}

struct GridItemView: View {
    let item: Int

    var body: some View {
        Text("\(item)")
            .frame(width: 80, height: 80)  // Adjust size as needed
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(5)
    }
}
