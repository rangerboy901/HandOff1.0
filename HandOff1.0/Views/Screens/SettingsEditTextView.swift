//
//  SettingsEditTextView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/27/22.
//

import SwiftUI

struct SettingsEditTextView: View {
    var body: some View {
        VStack {
            Text("This is the description to assist the user determine the functionality of the app")
            
            TextField("Placeholder", text: <#T##Binding<String>#>)
            Spacer()
            
        }
        .navigationTitle("Edit Display Name")
    }
}

struct SettingsEditTextView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SettingsEditTextView()
        }
        
    }
}
