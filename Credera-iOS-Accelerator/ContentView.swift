//
//  ContentView.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 8/17/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image("AppLogo")
                .resizable()
                .frame(width: 50, height: 50)
            Text("Credera iOS Accelerator")
                .font(Font.custom("AvenirNext-DemiBold", size: 17.0))
                .foregroundColor(Constants.ColorScheme.quaternary)
        }
        .padding(.vertical, 8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
