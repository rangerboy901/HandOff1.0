//
//  BrowseView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/17/22.
//

import SwiftUI

struct BrowseView: View {
    var body: some View {
        ScrollView (.vertical, showsIndicators: false, content: {
            CarouselView()
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
