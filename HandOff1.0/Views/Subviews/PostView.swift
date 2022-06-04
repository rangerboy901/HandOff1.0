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
                    
                    Button(action: {
                        showActionSheet.toggle()
                    }, label: {
                        Image(systemName: "ellipsis")
                            .font(.subheadline)
                    })
                    .accentColor(.primary)
                    .actionSheet(isPresented: $showActionSheet, content: {
                        getActionSheet()
                    })
                }
                .padding(.all, 6)
            }
            // JWD: IMAGE
            
            ZStack {
                Image(uiImage: postImage)
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
                    Button (action: {
                        
                        sharePost()
                    },
                            label: {
                        Image(systemName: "paperplane")
                        .font(.title3)
                })
                    .accentColor(.primary)
                    
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
    
    func getActionSheet() -> ActionSheet {
        
        switch self.actionSheetType {
        case .general:
            return ActionSheet(title: Text("What would you like to do?"),
                               message: nil, buttons:[
                                .destructive(Text("Report"), action: {
                                    self.actionSheetType = .reporting
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                       //Delay added to create latency for system to dismiss previous state.
                                        self.showActionSheet.toggle()
                                    }
                                                                 
                                }),
                                .default(Text("Learn more..."), action: {
                                    print("Learn more ")
                                }),
                                
                                    .cancel()
                               ])
        case .reporting:
            return ActionSheet(title: Text("Why are you reporting this post?"), message: nil,
                               buttons:[
                                
                                Alert.Button
                                    .destructive(Text("Suspect account."), action: {
                                        reportPost(reason: "Suspect Account")
                                    }),
                                Alert.Button
                                    .destructive(Text("This post is inappropriate."), action: {
                                        reportPost(reason: "This post is inappropriate.")
                                    }),
                                Alert.Button
                                    .destructive(Text("This post is spam."), action: {
                                        reportPost(reason: "This post is spam.")
                                    }),
                                
                                    .cancel({
                                        self.actionSheetType = .general
                                    })
                               ])
        }
    }
    
    func reportPost(reason: String) {
        print("REPORT POST NOW")
        
        
    }
    //JWD:  Future improvement to share to other apps and return user back to the post being shared
    func sharePost() {
        let message = "Check out this post!"
        let image = postImage
        let link = URL(string:"https://www.google.com")!
        
        let activityViewController = UIActivityViewController(activityItems: [message,image,link], applicationActivities: nil)
        
        let viewController = UIApplication.shared.windows.first?.rootViewController
        viewController?.present(activityViewController, animated: true, completion: nil)
    }
    
    
    
    
}
struct PostView_Previews: PreviewProvider {
    
    static var post: PostModel = PostModel (postID: "", userID: "", username: "Joe DeWeese", caption: "This is a test caption", dateCreated: Date(), likeCount: 0, likedByUser: false)
    
    static var previews: some View {
        PostView(post: post, showHeaderAndFooter: true, addHeartAnimationToView: true)
            .previewLayout(.sizeThatFits)
    }
    
}
