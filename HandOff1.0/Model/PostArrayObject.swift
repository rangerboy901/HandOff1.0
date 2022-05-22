//
//  PostArrayObject.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/14/22.
//

import Foundation

class PostArrayObject: ObservableObject {
    
    @Published var dataArray = [PostModel]()
    
    init() {
        
        print("fetch from database here")
        
        let post1 = PostModel(postID: "", userID: "", username: "Joseph DeWeese", caption: "One step at a time.", dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post2 = PostModel(postID: "", userID: "", username: "Dakota DeWeese", caption: "Now is the time when aperson should realize that everything ithey are doing is being watched.  You are always watching yourself and your behavior will be the reason for your unhappiness and not the other person.", dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post3 = PostModel(postID: "", userID: "", username: "Remington DeWeese", caption: nil, dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post4 = PostModel(postID: "", userID: "", username: "Montana DeWeese", caption: "Now is the time for all good men to come to the aid of their country..", dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post5 = PostModel(postID: "", userID: "", username: "Cooper DeWeese", caption: "One step at a time.", dateCreated: Date(), likeCount: 0, likedByUser: false)
        
        
        self.dataArray.append(post1)
        self.dataArray.append(post2)
        self.dataArray.append(post3)
        self.dataArray.append(post4)
        self.dataArray.append(post5)
    }
    //USED FOR SINGLE POST SELECTION
    init(post: PostModel) {
        self.dataArray.append(post)
    }
}
