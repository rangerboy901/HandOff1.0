//
//  UploadView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/23/22.
//

import SwiftUI

struct UploadView: View {
    var body: some View {
        ZStack {
            VStack {
                
                Button(action:   {
                    
                }, label: {
                    
                    Text("Take photo".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.MyTheme.orangeColor)

                })
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.MyTheme.blueColor)
                
                Button(action:   {
                    
                }, label: {
                    
                    Text("Import photo".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.MyTheme.beigeColor)

                })
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.MyTheme.orangeColor)
            }
     //       .edgesIgnoringSafeArea(.top)
            
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
