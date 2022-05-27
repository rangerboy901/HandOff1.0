//
//  PostImageView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/25/22.
//

import SwiftUI

struct PostImageView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var captionText: String = ""
    @Binding var imageSelected: UIImage
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            
            
            HStack {
                Button(action:{
                    presentationMode.wrappedValue.dismiss()
                    
                }, label: {
                    Image(systemName: "xmark")
                        .font(.title)
                        .padding()
                    
                })
                .accentColor(.primary)
                Spacer()
            }
            ScrollView(.vertical, showsIndicators: false, content: {
                
                Image(uiImage: imageSelected)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200, alignment: .center)
                    .cornerRadius(12)
                    .clipped()
                
                TextField("Enter remark here...", text: $captionText)
                    .padding()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray)
                    .foregroundColor(.primary)
                    .font(.headline)
                    .cornerRadius(15)
                    .autocapitalization(.sentences)
                    .foregroundColor(.primary)
                    .padding(.horizontal)
                
                Button(action: {
                    postPicture()
                },label: {
                    
                    Text("Submit to Feed".uppercased())
                        .font(.title3)
                        .frame(height: 60)
                        .frame(maxWidth: .infinity)
                        .background(Color.MyTheme.orangeColor)
                        .foregroundColor(.primary)
                        .font(.headline)
                        .cornerRadius(15)
                        .padding(.horizontal)
                    
                })
                .accentColor(.primary)
            })
            })
    }
    
    //JWD: FUNCTION POST PICTURE
    func postPicture() {
        print("Post picture to database")
    }
}

struct PostImageView_Previews: PreviewProvider {
    
    @State static var image = UIImage(named: "dog1")!
    
    static var previews: some View {
        PostImageView( imageSelected: $image)
            .preferredColorScheme(.light)
    }
}
