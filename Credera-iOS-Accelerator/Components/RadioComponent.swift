//
//  RadioComponent.swift
//  Credera-iOS-Accelerator
//
//  Created by Amanda Nisenbaum on 2/7/24.
// In this file, we show different way to create a Picker

import SwiftUI

enum FavoriteColor: String, CaseIterable, Identifiable {
    case blue, red, green
    var id: Self { self }
}

struct RadioComponent: View {
    //If you want a value to be the default, this variable must match the tag
    @State private var selectedInline: FavoriteColor = .blue
    @State private var selectedSegmented: FavoriteColor = .red
    @State private var selectedMenu = 2;
    var body: some View {
        VStack {
            List {
                Text("Inline View")
                Picker("Favorite Color", selection: $selectedInline) {
                    Text("Blue").tag(FavoriteColor.blue)
                    Text("Red").tag(FavoriteColor.red)
                    Text("Green").tag(FavoriteColor.green)
                }.pickerStyle(.inline)
                
                Spacer()
                Text("Segmented View")
                // Menu View of Radio Buttons
                Picker("Favorite Color", selection: $selectedSegmented) {
                    ForEach(FavoriteColor.allCases){ color in Text(color.rawValue.capitalized).tag(selectedSegmented.rawValue == color.rawValue)
                    }
                }.pickerStyle(.segmented)
                
                Spacer()
                Text("Menu View")
                // Menu View of Radio Buttons
                Picker("Favorite Color", selection: $selectedMenu) {
                    Text("Blue").tag(0)
                    Text("Red").tag(1)
                    Text("Green").tag(2)
                }.pickerStyle(.menu)
                
            }.scrollContentBackground(.hidden)
        }.padding(10)
    }
}

#Preview {
    RadioComponent()
}
