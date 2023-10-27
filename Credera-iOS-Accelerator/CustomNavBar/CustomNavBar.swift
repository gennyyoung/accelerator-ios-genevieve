//
//  CustomNavBar.swift
//  Credera-iOS-Accelerator
//
//  Created by Swathi Banaganapalli on 03/10/23.
//

import SwiftUI

struct CustomNavBar<Content>: View where Content: View {

    let title: String
    let content: Content
    let hide: Bool
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationStack {
            ZStack {
                content
            }.navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(
                        placement: .principal,
                        content: {
                            HStack {
                                if hide {
                                    Button(action: {
                                        //print("button pressed")
                                        self.presentationMode.wrappedValue.dismiss()

                                    }) {
                                        Image(systemName: "chevron.left")
                                    }
                                }

                                Spacer(minLength: 15)
                                HStack {
                                    Image("AppLogo")
                                        .renderingMode(.none)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 45, height: 55)

                                    Text(title)
                                        .multilineTextAlignment(.leading)
                                }
                            }.padding(.trailing)
                        })
                }
        }.navigationBarBackButtonHidden(true)
    }
}
struct CustomNavBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavBar(title: "Credera iOS Accelerator", content: Text("Testing"), hide: true)
    }
}
