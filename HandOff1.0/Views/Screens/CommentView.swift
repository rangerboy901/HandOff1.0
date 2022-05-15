//
//  CommentView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/14/22.
//

import SwiftUI

struct CommentView: View {
    
    @State var submissionText: String = ""
    
    var body: some View {
        VStack {
            
            ScrollView {
                
                Text("PlaceHolder")
                Text("PlaceHolder")
                Text("PlaceHolder")
                Text("PlaceHolder")
                
            }
            
            HStack {
                
                Image("dog1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .cornerRadius(20)
                
                TextField("Add a comment here...", text: $submissionText)
                
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
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        CommentView()
    }
}
}
