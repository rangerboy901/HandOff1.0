//
//  PostView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/14/22.
//

import SwiftUI

struct PostView: View {
    
    @State var post: PostModel
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 0, content:  {
            
            // JWD: HEADER
            HStack{
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30, alignment: .center)
                    .cornerRadius(15)
                
                Text(post.username)
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
            
            if let caption = post.caption {
                
                HStack {
                    Text(caption)
                    
                    
                    Spacer(minLength: 0)
                }
                .padding(.all, 6)
            }
            
        })
    }
}
struct PostView_Previews: PreviewProvider {
    
    static var post: PostModel = PostModel (postID: "", userID: "", username: "Joe DeWeese", caption: "This is a test caption", dateCreated: Date(), likeCount: 0, likedByUser: false)
    
    static var previews: some View {
        PostView(post: post)
            .previewLayout(.sizeThatFits)
    }
}
