//
//  FormView.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 2/12/24.
//

import Foundation
import SwiftUI

struct FormView: View {
    @EnvironmentObject private var themeManager : ThemeManager
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var age: String = ""
    @State private var height: String = ""
    @State private var eyeColor: String = ""
    @State private var occupation: String = ""

    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 10){
                //Form {
                Section(header: Text("Profile Information: ").bold()) {
                        TextField("First Name", text: $firstName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        TextField("Last Name", text: $lastName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        TextField("Email", text: $eyeColor)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                Spacer()
                Section(header: Text("User Information: ").bold()) {
                        TextField("Age", text: $age)
                            .keyboardType(.numberPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                        TextField("Birthday", text: $age)
                            .keyboardType(.numberPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        TextField("Height", text: $eyeColor)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                        TextField("Weight", text: $eyeColor)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        TextField("Eye Color", text: $eyeColor)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        TextField("Hair Color", text: $occupation)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        TextField("Occupation", text: $occupation)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                }
                //}
                Spacer()
                Button(action: {
                    // Perform an action with the user input, e.g., save or submit
                    print("First Name: \(firstName), Last Name: \(lastName), Age: \(age), Height: \(height), Eye Color: \(eyeColor), Occupation: \(occupation)")
                }) {
                    Text("Submit")
                }.buttonStyle(themeManager.selectedTheme.primaryButtonStyle).frame(alignment: .center)
                Spacer()
                
            }.padding(30)
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
