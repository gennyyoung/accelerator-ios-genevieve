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
        CustomNavBar(title: "Credera iOS Accelerator", content:
                        
                        VStack(spacing: 20){
            
                    List(items, id: \.self) { item in
                    
                                    Text(item)
                            }
                            
                            }
                             , hide: true)

    }
}
struct SampleTableView_Previews: PreviewProvider {
    static var previews: some View {
        SampleTableView()
    }
}
