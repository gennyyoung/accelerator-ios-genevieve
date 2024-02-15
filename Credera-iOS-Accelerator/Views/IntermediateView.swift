//
//  IntermediateView.swift
//  Credera-iOS-Accelerator
//
//  Created by Swathi Banaganapalli on 14/09/23.
//

import SwiftUI

struct IntermediateView: View {
    @EnvironmentObject private var themeManager : ThemeManager
    @Binding var navigationPath: [Route]
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Second View Controller").font(.headline)
                .multilineTextAlignment(.center)
            Button("Navigate to Final View") {
                navigationPath.append(.finalView)
            }.buttonStyle(themeManager.selectedTheme.primaryButtonStyle)
            
            Text("This is an example of passing information from one VC to another")
                .padding(
                    .trailing, 55
                )
                .padding(.leading, 50).font(.headline)
                .multilineTextAlignment(.center)
                .frame(width: 300)
            }.navigationBarTitle(Text("Intermediate View"))
        }
}

//struct IntermediateView_Previews: PreviewProvider {
//    static var previews: some View {
//        IntermediateView(rootIsActive: $rootIsActive)
//    }
//}
