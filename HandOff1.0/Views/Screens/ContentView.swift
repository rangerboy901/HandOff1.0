//
//  ContentView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/13/22.
//

import SwiftUI

struct ContentView: View {
    //JWD:  PROPERTIES
    
    
    var body: some View {
       
        
        TabView {
            NavigationView {
                FeedView(posts: PostArrayObject(), title: "MyFeed")
            }
                .tabItem {
                    Text("Feed")
                    Image(systemName: "book.fill")
                }
            NavigationView {
           BrowseView()
            }
                .tabItem{
                    Text("Browse")
                    Image(systemName: "magnifyingglass")
        
        }
            UploadView()
                .tabItem{
                    Text("Upload")
                    Image(systemName: "square.and.arrow.up.fill")
                    
        }
            NavigationView {
                
                ProfileView(isMyProfile: true, profileDisplayName: "My Profile", profileUserID: "")
            }
                .tabItem{
                    Text("Profile")
                    Image(systemName: "person.fill")
                   
        }
           
    }
        .accentColor(Color.MyTheme.blueColor)
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
