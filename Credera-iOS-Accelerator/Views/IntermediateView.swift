//
//  IntermediateView.swift
//  Credera-iOS-Accelerator
//
//  Created by Swathi Banaganapalli on 14/09/23.
//

import SwiftUI

struct IntermediateView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink(destination: FinalView().navigationTitle("Final View")) {
                    VStack(spacing: 20) {
                        Text("Navigate to final view")
                            .modifier(CustomButtonStyle())
                    }
                    
                }.navigationBarBackButtonHidden(true)
                Text("This is an example of passing information from one VC to another")
                    .padding(
                        .trailing, 55
                    )
                    .padding(.leading, 50).font(.headline)
                    .multilineTextAlignment(.center)
                    .frame(width: 300)
            }
        }
    }
}

struct IntermediateView_Previews: PreviewProvider {
    static var previews: some View {
        IntermediateView()
    }
}
