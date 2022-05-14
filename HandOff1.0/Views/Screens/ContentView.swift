//
//  ContentView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/13/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
       FeedView()
            }
                .tabItem {
                    Text("Feed")
                    Image(systemName: "book.fill")
                }
            
            Text("Screen2")
                .tabItem{
                    Text("Browse")
                    Image(systemName: "magnifyingglass")
        
                         }
            Text("Screen3")
                .tabItem{
                    Text("Upload")
                    Image(systemName: "square.and.arrow.up.fill")
                    
        }
            Text("Screen4")
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Profile")
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
