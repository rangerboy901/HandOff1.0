//
//  ProfileHeaderView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/27/22.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 10, content: {
           // JWD: PROFILE PICTURE
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120, alignment: .center)
                .cornerRadius(60)
            
            Text("USER NAME HERE")
                .font(.largeTitle)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
            Text("THIS IS WHERE THE USER CAN ADD HIS/HER BIO")
            
            HStack(alignment: .center, spacing: 20, content: {
                // JWD: POSTS
                VStack(alignment: .center, spacing: 5, content: {
                    
                    Text("5")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Capsule()
                        .fill(Color.gray)
                        .frame(width: 20, height: 2, alignment: .center)
                    Text("Posts")
                        .font(.callout)
                        .fontWeight(.medium)
                })
                // JWD: LIKES
                VStack(alignment: .center, spacing: 5, content: {
                    Text("3")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Capsule()
                        .fill(Color.gray)
                        .frame(width: 20, height: 2, alignment: .center)
                    Text("LIKES")
                        .font(.callout)
                        .fontWeight(.medium)
                })
    })
})
        .frame(maxWidth: .infinity)
        .padding()
}
}
struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
            .previewLayout(.sizeThatFits)
    }
}
