//
//  MessageView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/15/22.
//

import SwiftUI

struct MessageView: View {
    
    @State var comment: CommentModel
    
    var body: some View {
        HStack {
            
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: nil, content: {
                //JWD: USERNAME
                Text(comment.userName)
                    .font(.caption)
                    .foregroundColor(.gray)
                //JWD: CONTENT
                Text(comment.content)
                    .padding(.all, 10)
                    .foregroundColor(.primary)
                    .background(Color.gray)
                cornerRadius(10)
                
            })
            Spacer(minLength: 0)
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    
    static var comment: CommentModel = CommentModel(commentID: "", userID: "someone", userName: "Joe", content: "This photo is real cool", dateCreated: Date())
    
    static var previews: some View {
        MessageView(comment: comment)
            .previewLayout(.sizeThatFits)
    }
}
