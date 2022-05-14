//
//  FeedView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/14/22.
//

import SwiftUI

struct FeedView: View {
    
    @ObservedObject var posts: PostArrayObject
    
    
    
    
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false, content: {
            
            LazyVStack {
                ForEach(posts.dataArray, id: \.self) { posts in
                    PostView(post: posts)
                   
                }
            }
            
        })
        .navigationBarTitle("My Feed")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            FeedView(posts: PostArrayObject())
    }
}
}
