//
//  SigninWithAppleButtonView.swift
//  HandOff1.0
//
//  Created by Joseph DeWeese on 5/28/22.
//

import Foundation
import SwiftUI
import AuthenticationServices

struct SigninWithAppleButtonView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ASAuthorizationAppleIDButton {
        return ASAuthorizationAppleIDButton(authorizationButtonType: .default,
                                            authorizationButtonStyle: .whiteOutline)
    }
    func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: Context) {}
}
