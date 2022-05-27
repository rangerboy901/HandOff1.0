//
//  BrowseView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/17/22.
//

import SwiftUI

struct BrowseView: View {
    //JWD:  PROPERTIES
    var posts = PostArrayObject()
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false, content: {
            CarouselView()
            ImageGridView(posts: posts)
        })
        .navigationTitle("Browse")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        BrowseView()
    }
}
}
