//
//  PostView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/14/22.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0, content:  {
            
            // JWD: HEADER
            HStack{
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30, alignment: .center)
                    .cornerRadius(15)
                
                Text("User Name Here")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .font(.subheadline)
                
            }
            .padding(.all, 6)
            
            // JWD: IMAGE
            
            Image("dog1")
                .resizable()
                .scaledToFit()
            // JWD: FOOTER
            
            HStack(alignment: .center, spacing: 20, content: {
                
                Image(systemName: "heart")
                    .font(.title3)
                
                Image(systemName: "bubble.middle.bottom")
                    .font(.title3)
                
                Image(systemName: "paperplane")
                    .font(.title3)
                
                Spacer()
            })
            .padding(.all, 6)
            
            HStack {
                Text("This is the caption for the photo!")
                
                Spacer(minLength: 0)
            }
            .padding(.all, 6)
            
        })
    }
}
struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
            .previewLayout(.sizeThatFits)
    }
}
