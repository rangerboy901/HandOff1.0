//
//  SettingsEditTextView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/27/22.
//

import SwiftUI

struct SettingsEditTextView: View {
    //JWD:  PROPERTIES
    @State var submissionText: String = ""
    @State var title: String
    @State var description: String
    @State var placeholder: String
    
    var body: some View {
        
        VStack{
            
            HStack {
                Text(description)
                Spacer(minLength: 0)
            }
            
            
            TextField(placeholder, text: $submissionText)
                .padding()
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(Color.gray)
                .cornerRadius(12)
                .font(.headline)
                .autocapitalization(.sentences)
            
            Button (action: {
                print("joe")
            }, label: {
                Text("Save".uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding()
                    .frame(height:60)
                    .frame(maxWidth: .infinity)
                    .background(Color.MyTheme.orangeColor)
                    .cornerRadius(12)
            })
            
            
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity)
        .navigationTitle(title)
    }
}

struct SettingsEditTextView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SettingsEditTextView(title: "test", description: "description", placeholder: "placeholder")
        }
        
    }
}
