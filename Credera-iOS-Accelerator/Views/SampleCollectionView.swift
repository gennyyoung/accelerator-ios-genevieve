//
//  SampleCollectionView.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 8/23/23.
//

import SwiftUI

struct SampleCollectionView: View {
    @EnvironmentObject private var themeManager : ThemeManager

    let data = (1...20).map { $0 }  // Sample data
    private var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        CustomNavBar(
            title: "Credera iOS Accelerator",
            content:
                ScrollView {
                    ZStack{
                        //ZStack and theme manager will add a background color to the grid
                        themeManager.selectedTheme.backgroundColor.opacity(0.5)
                        LazyVGrid(columns: threeColumnGrid) {
                            ForEach(data, id: \.self) { item in
                                GridItemView(item: item).background(.white)
                            }
                        }
                        .padding()
                    }.edgesIgnoringSafeArea(.all)}, hide: true)

    }
}

struct GridItemView: View {
    @EnvironmentObject private var themeManager : ThemeManager

    let item: Int

    var body: some View {
        Text("\(item)")
            .fontWeight(Font.Weight.bold)
            .font(.system(size: 30))
            .frame(width: 110, height: 100)  // Adjust size as needed
            .background(.white)
            .foregroundColor(.gray)
            .cornerRadius(4)
            .border(.gray, width: 1).opacity(0.5)
    }
}
