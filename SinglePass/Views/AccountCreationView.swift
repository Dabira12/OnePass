//
//  AccountCreationView.swift
//  SinglePass
//
//  Created by Dabira Akinwumi on 2020-10-28.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import SwiftUI
import Firebase

struct AccountCreationView: View {
   
    
    @Binding var showLogin: Bool
    @State private var email = ""
    @State private var password = ""
    @State private var confirmedPassword = ""
    @State private var formOffset: CGFloat = 0
    
    
    

    fileprivate func goToLoginButton() -> some View {
        return Button(action: {
            withAnimation(.spring() ) {
                self.showLogin.toggle()
            }
        }) {
            HStack {
                Text("Login")
                    .accentColor(Color.darkerAccent)
                Image(systemName: "arrow.right.square.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 20)
                    .foregroundColor(Color.darkerAccent)
                    
            }
        }
    }
    
    fileprivate func createContent() -> some View{
        VStack {
                Image("singlePass-dynamic").resizable().aspectRatio(contentMode: .fit) .frame(height: 30)
                    .padding(.bottom)
                VStack(spacing: 10) {
                    Text("Create Account").font(.title).bold()
                    VStack(spacing: 30) {
                        SharedTextfield(value: self.$email,header: "Email", placeholder: "Your primary email",errorMessage: "")
                        PasswordField(value: self.$password,header: "Password",  placeholder: "Make sure it's string",errorMessage: "", isSecure: true)
                        PasswordField(value: self.$confirmedPassword,header: "Confirm Password",  placeholder: "Must match the password", errorMessage: "", isSecure: true)
                        
                    }
                    LCButton(text: "Sign up", backgroundColor: Color.accent ){Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                        // ...
                      }
                    print(User().getEmail())
                    }
                    
                }
            
            goToLoginButton()
        }
    }

    var body: some View {
        createContent()
       
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        AccountCreationView(showLogin:.constant(false) )
    }
}
