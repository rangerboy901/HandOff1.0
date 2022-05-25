//
//  UploadView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/23/22.
//

import SwiftUI
import UIKit



struct UploadView: View {
    
    @State var showImagePicker: Bool = false
    @State var imageSelected: UIImage = UIImage(named: "logo.transparent")!
    @State var sourceType: UIImagePickerController.SourceType = .camera
    
    var body: some View {
        ZStack {
            VStack {
                
                Button(action:   {
                    sourceType = UIImagePickerController.SourceType.camera
                    showImagePicker.toggle()
                    
                }, label: {
                    
                    Text("Take photo".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.MyTheme.orangeColor)
                    
                })
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.MyTheme.blueColor)
                
                Button(action:  {
                    sourceType = UIImagePickerController.SourceType.photoLibrary
                    showImagePicker.toggle()
                    
                }, label: {
                    
                    Text("Import photo".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.MyTheme.beigeColor)
                    
                })
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.MyTheme.orangeColor)
            }
            .sheet(isPresented: $showImagePicker, content: {
                ImagePicker(imageSelected: $imageSelected,  sourceType: $sourceType)
            })
            
            Image("logo.transparent")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250, alignment: .center)
                .shadow(color: .black, radius: 12)
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}
