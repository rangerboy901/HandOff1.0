//
//  SettingsEditImageView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/27/22.
//

import SwiftUI

struct SettingsEditImageView: View {
    //JWD:  PROPERTIES
   
    @State var title: String
    @State var description: String
    @State var selectedImage: UIImage  //  Image shown on this screen
    @State var showImagePicker: Bool = false
    @State var sourceType: UIImagePickerController.SourceType =
    UIImagePickerController.SourceType.photoLibrary
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20){
            
            HStack {
                Text(description)
                Spacer(minLength: 0)
            }
            Image(uiImage: selectedImage)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200, alignment: .center)
                .clipped()
                .cornerRadius(12)
            
            Button (action: {
                showImagePicker.toggle()
            }, label: {
                Text("Import".uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding()
                    .frame(height:60)
                    .frame(maxWidth: .infinity)
                    .background(Color.MyTheme.brightOrangeColor)
                    .cornerRadius(12)
            })
            .accentColor(.primary)
            .sheet(isPresented: $showImagePicker, content: {
                ImagePicker(imageSelected: $selectedImage, sourceType: $sourceType)
            })
            Button (action: {
                print("joe")
            }, label: {
                Text("Save".uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding()
                    .frame(height:60)
                    .frame(maxWidth: .infinity)
                    .background(Color.MyTheme.orangeColor)
                    .cornerRadius(12)
            })
            
            
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity)
        .navigationTitle(title)
    }
}

struct SettingsEditImageView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            SettingsEditImageView(title: "Title", description: "Description", selectedImage: UIImage(named: "dog1")!)
    }
}
}
