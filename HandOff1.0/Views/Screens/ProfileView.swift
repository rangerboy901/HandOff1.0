//
//  ProfileView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/27/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView (.vertical, showsIndicators: false, content: {
            
            ProfileHeaderView()
        })
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing:
                                Button(action: {}, label: { Image(systemName: "line.horizontal.3")
        })
                                    .accentColor(Color.MyTheme.blueColor)
        )
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
