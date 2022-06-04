//
//  PostView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/14/22.
//

import SwiftUI

struct PostView: View {
    
    @State var post: PostModel
    var showHeaderAndFooter: Bool
    @State var postImage: UIImage = UIImage(named: "dog1")!
    @State var animateLike: Bool = false
    @State var showActionSheet: Bool = false
    @State var actionSheetType: PostActionSheetOption = .general
    @State var addHeartAnimationToView: Bool
    
    enum PostActionSheetOption {
        case general
        case reporting
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 0, content:  {
            
            // JWD: HEADER
            if showHeaderAndFooter {
            HStack{
                
                NavigationLink(
                    destination: ProfileView(isMyProfile: false, profileDisplayName: post.username, profileUserID: post.userID),
                    label: {
                    Image("dog1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                        .cornerRadius(15)
                    
                    Text(post.username)
                        .font(.callout)
                        .fontWeight(.medium)
                        .foregroundColor(.primary)
                })
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .font(.subheadline)
                
            }
            .padding(.all, 6)
                
            }
            // JWD: IMAGE
            
            ZStack {
                Image("dog1")
                    .resizable()
                .scaledToFit()
                
                if addHeartAnimationToView {
                    
                LikeAnimationView(animate: $animateLike)
                    
                }
            }
            // JWD: FOOTER
            if showHeaderAndFooter {
            HStack(alignment: .center, spacing: 20, content: {
                Button (action: {
                    if post.likedByUser {
                        unlikePost()
                    }else {
                        likePost()
                    }
                },
                        label: {
                    Image(systemName: post.likedByUser ? "heart.fill" : "heart")
                        .font(.title3)
                    
                })
                .accentColor(post.likedByUser ? .red : .primary)
                
                
                //JWD: COMMENT ICON
                NavigationLink(
                    destination: CommentView(),
                    label: {
                        
                        Image(systemName: "bubble.middle.bottom")
                            .font(.title3)
                            .foregroundColor(.primary)
                        
                    })
              
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
            }
            
        })
    }
    //JWD: FUNCTIONS
    
    func likePost() {
        
        //Update local data
        
        let updatePost = PostModel(postID: post.postID, userID: post.userID, username: post.username, caption: post.caption, dateCreated: post.dateCreated, likeCount: post.likeCount + 1, likedByUser: true)
        self.post = updatePost
        
        animateLike = true
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
            animateLike = false
        }
        
    }
    
    func unlikePost() {
        let updatePost = PostModel(postID: post.postID, userID: post.userID, username: post.username, caption: post.caption, dateCreated: post.dateCreated, likeCount: post.likeCount - 1, likedByUser: false)
        self.post = updatePost
        
    }
}
               
struct PostView_Previews: PreviewProvider {
    
    static var post: PostModel = PostModel (postID: "", userID: "", username: "Joe DeWeese", caption: "This is a test caption", dateCreated: Date(), likeCount: 0, likedByUser: false)
    
    static var previews: some View {
        PostView(post: post, showHeaderAndFooter: true, addHeartAnimationToView: true)
            .previewLayout(.sizeThatFits)
    }
}
