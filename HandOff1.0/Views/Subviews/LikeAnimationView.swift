//
//  LikeAnimationView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/30/22.
//

import SwiftUI



struct LikeAnimationView: View {
    //JWD:  PROPERTIES
    @State var animate: Bool = false
    
    
    var body: some View {
        ZStack {
            Image(systemName: "heart.fill")
                .foregroundColor(Color.red.opacity(0.3))
                .font(.system(size: 200))
                .opacity(animate ? 1.0 : 0.0)
            Image(systemName: "heart.fill")
                .foregroundColor(Color.red.opacity(0.6))
                .font(.system(size: 150))
                .opacity(animate ? 1.0 : 0.0)
            Image(systemName: "heart.fill")
                .foregroundColor(Color.red.opacity(0.9))
                .font(.system(size: 100))
                .opacity(animate ? 1.0 : 0.0)
        }
    }
}

struct LikeAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        LikeAnimationView()
            .previewLayout(.sizeThatFits)
    }
}
