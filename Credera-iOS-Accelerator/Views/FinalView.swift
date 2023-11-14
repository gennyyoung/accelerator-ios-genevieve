//
//  FinalView.swift
//  Credera-iOS-Accelerator
//
//  Created by Swathi Banaganapalli on 14/09/23.
//

import SwiftUI

struct FinalView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 20) {
                NavigationLink(destination: HomeScreen()) {
                    VStack(spacing: 20) {
                        Text("Navigate to first view")
                            .modifier(CustomButtonStyle())
                    }
                }
                
                Text("This is an example of passing information from one VC to another")
                    .padding(
                        .trailing, 55
                    )
                    .padding(.leading, 50).font(.headline)
                    .multilineTextAlignment(.center)
                    .frame(width: 300)
            }.navigationBarHidden(true)
        }
    }
}

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView()
    }
}
