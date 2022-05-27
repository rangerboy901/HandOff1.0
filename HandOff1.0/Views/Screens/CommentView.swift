//
//  CommentView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/14/22.
//

import SwiftUI

struct CommentView: View {
    //JWD:  PROPERTIES
    
    @State var submissionText: String = ""
    @State var commentArray = [CommentModel]()
    
    var body: some View {
        VStack {
            
            ScrollView {
                LazyVStack{
                    ForEach(commentArray, id: \.self) { comment in
                        MessageView(comment: comment)
                    }
                }
                
            }
            
            HStack {
                
                Image("dog1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .cornerRadius(20)
                
                TextField("Remark spot...", text: $submissionText)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "paperplane.fill")
                        .font(.title2)
                })
                .accentColor(Color.MyTheme.blueColor)
                
            }
            .padding(.all, 6)
        }
        .navigationTitle("Comments")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear(perform: {
            getComments()
            
        })
    }
    //JWD: FUNCTIONS
    
    func getComments()  {
    
    print("get comments from database")
        
        let comment1 = CommentModel(commentID: "", userID: "", userName: "Joe w", content: "This is the first comment", dateCreated: Date())
        let comment2 = CommentModel(commentID: "", userID: "", userName: "Dakota", content: "This is the second comment", dateCreated: Date())
        let comment3 = CommentModel(commentID: "", userID: "", userName: "Remington", content: "This is the third comment", dateCreated: Date())
        let comment4 = CommentModel(commentID: "", userID: "", userName: "Montana", content: "This is the fourth comment", dateCreated: Date())
        let comment5 = CommentModel(commentID: "", userID: "", userName: "Cooper", content: "This is the fifth comment", dateCreated: Date())
        
        self.commentArray.append(comment1)
        self.commentArray.append(comment2)
        self.commentArray.append(comment3)
        self.commentArray.append(comment4)
        self.commentArray.append(comment5)
        
}
}
struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        CommentView()
    }
}
}
