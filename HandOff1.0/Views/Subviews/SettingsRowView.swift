//
//  SettingsRowView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/27/22.
//

import SwiftUI

struct SettingsRowView: View {
    //JWD: PROPERTIES
    var leftIcon: String
    var text: String
    var color: Color
    
    
    
    var body: some View {
        HStack {
            
            ZStack{
                
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(color)
                
                Image(systemName: leftIcon)
                    .font(.title3)
                    .foregroundColor(.white)
                
            }
           
            .frame(width: 35, height: 35, alignment: .center)
            
            Text(text)
                .foregroundColor(.primary)
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.headline)
                .foregroundColor(.primary)
        }
        .padding(.vertical, 4)
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(leftIcon: "heart.fill", text: "Row Title", color: .blue)
            .previewLayout(.sizeThatFits)
    }
}
