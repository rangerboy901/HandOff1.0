//
//  SignUpView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/27/22.
//

import SwiftUI

struct SignUpView: View {
    //JWD: PROPERTIES
    @State var showOnboarding: Bool = false
    
    
    
    var body: some View {
       
        VStack(alignment: .center, spacing: 20, content: {
            Spacer()
            Image("frog-1")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200, alignment: .center)
            
            Text("You're not signed in! 👊")
                .font(.largeTitle)
                .fontWeight(.bold)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .foregroundColor(Color.MyTheme.brightOrangeColor)
            Button(action: {
                showOnboarding.toggle()
            }, label: {
                Text("Sign in / Sign up".uppercased())
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .background(Color.MyTheme.brightOrangeColor)
                    .cornerRadius(12)
                    .shadow(radius: 12)
                
            })
            .accentColor(Color.MyTheme.blueColor)
            Spacer()
            Spacer()
            
        })
        .padding(.all, 40)
        .background(Color.MyTheme.blueColor)
        .edgesIgnoringSafeArea(.all)
        .fullScreenCover(isPresented: $showOnboarding, content: {
           OnboardingView()
        })
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
