//
//  SettingsView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/27/22.
//

import SwiftUI

struct SettingsView: View {
    //JWD: PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        NavigationView{
        ScrollView(.vertical, showsIndicators: false, content:  {
            //JWD: SECTION 1: MYTRIBE
            GroupBox(label: SettingsLabelView(labelText: "My Tribe", labelImage: "dot.radiowaves.left.and.right"), content: {
                HStack(alignment: .center, spacing: 10, content: {
                    Image("frog-1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(12)
                    
                    Text("Shoot, Move and Communicate.  Information is the most empowering tool.")
                    
                })
            })
            .padding()
            //JWD: SECTION 2: PROFILE
            GroupBox(label: SettingsLabelView(labelText: "Profile", labelImage: "person.fill")  , content: {
                
                NavigationLink(
                    destination: {
                        Text("Destination")
                    },
                    label: {
                        SettingsRowView(leftIcon: "pencil", text: "Display Name", color: Color.MyTheme.orangeColor)
                    })
                SettingsRowView(leftIcon: "text.quote", text: "Personal Bio", color: Color.MyTheme.orangeColor)
                SettingsRowView(leftIcon: "photo", text: "Profile Picture", color: Color.MyTheme.orangeColor)
                SettingsRowView(leftIcon: "lock.fill", text: "Security and Privacy", color: Color.MyTheme.orangeColor)
                SettingsRowView(leftIcon: "pencil", text: "Placeholder", color: Color.MyTheme.orangeColor)
                SettingsRowView(leftIcon: "figure.walk", text: "Sign Out", color: Color.MyTheme.orangeColor)
            })
            .font(.title3)
            
            .padding()
            //JWD:  SECTION 3:  APPLICATION
            GroupBox(label: SettingsLabelView(labelText: "Application Information", labelImage: "app.iphone"), content: {
                SettingsRowView(leftIcon: "folder.fill", text: "Terms & Conditions", color: Color.MyTheme.blueColor)
                SettingsRowView(leftIcon: "folder.fill", text: "Privacy Policy", color: Color.MyTheme.blueColor)
                SettingsRowView(leftIcon: "globe", text: "My Tribe Website", color: Color.MyTheme.blueColor)
                
                
            })
            .padding()
            
            //JWD: SECTION 4:  SIGN OFF
            GroupBox{
                Text("Keep the connection without all the noise. \n All Rights Reserved \n Mountain Lab Cafe Inc. \n Copyright 2020 ©")
                    .foregroundColor(Color.MyTheme.blueColor)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
            }
            .padding()
            .padding(.bottom, 80)
        })
       
        .font(.title3)
        .navigationBarTitle("Settings")
        .navigationBarTitleDisplayMode(.large)
        .navigationBarItems(leading:
        Button(action:
                {
            presentationMode.wrappedValue.dismiss()
        },
               label: {
                Image(systemName: "xmark")
                .font(.title3)
        })
            .accentColor(.primary)
        )
    }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
