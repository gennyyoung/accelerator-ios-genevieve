//
//  SampleTableView.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 8/23/23.
//

import SwiftUI

struct SampleTableView: View {
    let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]

    var body: some View {
        NavigationView {
            List(items, id: \.self) { item in
                Text(item)
            }
            .navigationBarTitle("Table View")
        }
    }
}
