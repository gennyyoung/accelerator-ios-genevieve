//
//  HeaderComponent.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 8/17/23.
//

import SwiftUI

struct HeaderComponent: View {
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

struct HeaderComponent_Previews: PreviewProvider {
    static var previews: some View {
        HeaderComponent()
    }
}
