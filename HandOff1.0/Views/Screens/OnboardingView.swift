//
//  OnboardingView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/28/22.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack {
            Image("frog-1")
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 400, alignment: .center)
                .shadow(color: .blue, radius: 12)
            
            Text("Welcome to My Tribe!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.MyTheme.brightOrangeColor)
            Text("Stay Connected without all the noise.")
                .font(.headline)
                .fontWeight(.medium)
                .foregroundColor(Color.MyTheme.brightOrangeColor)
                .padding()
            
            
            Button(action: {
                
            },label: {
                SigninWithAppleButtonView()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                
            })
            Button(action: {
                
            },label: {
                HStack {
                    Image(systemName: "globe")
                    Text("Sign in with Google")
                }
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(Color(.sRGB, red: 222/255, green: 82/255, blue: 70/255, opacity: 1.0))
                .cornerRadius(4)
                .font(.system(size: 25, weight: .medium, design: .default))
            })
            .accentColor(Color.white)
        }
        .padding(.all,20)
        .ignoresSafeArea(.all)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.MyTheme.blueColor)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
