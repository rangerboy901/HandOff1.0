//
//  ProfileView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/27/22.
//

import SwiftUI

struct ProfileView: View {
    //JWD:  PROPERTIES
    var isMyProfile: Bool
    @State var profileDisplayName: String
    var profileUserID: String
    @State var showSettings: Bool = false
    
    var posts = PostArrayObject()
    
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false, content: {
            
            ProfileHeaderView(profileDisplayName: $profileDisplayName)
            Divider()
            
            ImageGridView(posts: posts)
        })
        .navigationTitle("My Profile")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing:
                                Button(action: {
            showSettings.toggle()
            
        },
                                       label: { Image(systemName: "line.horizontal.3")
        })
                                    .accentColor(Color.MyTheme.blueColor)
                                    .opacity(isMyProfile ? 1.0 : 0.00)
        )
        .sheet(isPresented: $showSettings) {
            SettingsView()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(isMyProfile: true, profileDisplayName: "Joe", profileUserID: "")
    }
}
