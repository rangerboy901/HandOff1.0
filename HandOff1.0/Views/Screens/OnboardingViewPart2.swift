//
//  OnboardingViewPart2.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/28/22.
//

import SwiftUI



struct OnboardingViewPart2: View {
    //JWD: PROPERTIES
    @State var displayName: String = ""
    @State var showImagePicker: Bool = false
    
//  FOR IMAGE PICKER
    @State var imageSelected: UIImage = UIImage(named: "frog-1")!
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    var body: some View {
        VStack(alignment: .center, spacing: 20, content: {
            
            Text("What's your name?")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.MyTheme.brightOrangeColor)
            
            TextField("Enter your name...", text: $displayName)
                .padding()
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(Color.gray)
                .cornerRadius(12)
                .font(.headline)
                .autocapitalization(.sentences)
                .padding(.horizontal)
            
            Button(action: {
                showImagePicker.toggle()
            },label: {
                Text("FINISH: Add Profile Picture")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()
                frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(Color.MyTheme.brightOrangeColor)
                .cornerRadius(12)
                .padding(.horizontal)
            })
            .accentColor(Color.MyTheme.blueColor)
            .opacity(displayName != "" ? 1.0 : 0.0)
            .animation(.easeInOut(duration: 1.0))
        })
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.MyTheme.blueColor)
        .edgesIgnoringSafeArea(.all)
        .sheet(isPresented: $showImagePicker, onDismiss: createProfile, content: {
            ImagePicker(imageSelected: $imageSelected, sourceType: $sourceType)
        })
    }
    func createProfile() {
        print("create profile")
    }
    
}

struct OnboardingViewPart2_Previews: PreviewProvider {
    
    
    static var previews: some View {
        OnboardingViewPart2()
    }
}
