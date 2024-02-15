//
//  FilterView.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 2/12/24.
//

import Foundation
import SwiftUI

struct FilterView: View {
    @State private var searchText = ""
    private let fruits = [
            "Apple", "Banana", "Orange", "Grapes", "Strawberry", "Watermelon", "Pineapple", "Mango", "Cherry", "Kiwi", "Blueberry", "Peach", "Pear", "Raspberry", "Blackberry", "Plum", "Lemon", "Lime", "Cranberry", "Coconut", "Fig", "Grapefruit", "Guava", "Apricot", "Pomegranate",
            "Avocado", "Cantaloupe", "Honeydew", "Passion Fruit", "Nectarine"
        ]


    var filteredFruits: [String] {
        searchText.isEmpty ? fruits : fruits.filter { $0.lowercased().contains(searchText.lowercased()) }
    }

    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText)
                    .padding()

                List(filteredFruits, id: \.self) { fruit in
                    Text(fruit)
                }
            }
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}

struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        HStack {
            TextField("Search", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 10)

            Button(action: {
                text = ""
            }) {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.gray)
            }
            .padding(.trailing, 10)
            .opacity(text.isEmpty ? 0 : 1)
        }
    }
}
