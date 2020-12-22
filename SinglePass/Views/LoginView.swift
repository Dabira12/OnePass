//
//  LoginView.swift
//  SinglePass
//
//  Created by Dabira Akinwumi on 2020-10-27.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import SwiftUI


struct LoginView:View {
    @Binding var showCreateAccount: Bool
    @State private var email = ""
    @State private var password = ""
    @State private var formOffset: CGFloat = 0

    fileprivate func createContent() -> some View {
        VStack {
            Image("singlePass-dynamic").resizable().aspectRatio(contentMode: .fit) .frame(height: 30)
                .padding(.bottom)
            
            VStack(spacing: 30) {
                Text("Login").font(.title).bold()
                VStack(spacing: 30) {
                    SharedTextfield(value: self.$email, header: "Email" , placeholder: "Your email",errorMessage: "")
                    PasswordField(value: self.$password, header: "Master Password", placeholder: "Make sure the password is strong", errorMessage: "" , isSecure: true)
                    
                    LCButton(text: "Login", backgroundColor: Color.accent ) { }
                    
                    Button(action: {
                        
                    }) {
                        VStack {
                            Image(systemName: "faceid")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color.accent)
                            Text("Use face ID").foregroundColor(.accent)
                        }
                    }
                }
                
                
            }
            createAccountButton()
           
        }
//        createAccountButton()
 }
    
    fileprivate func createAccountButton() -> some View {
           return Button(action: {
               withAnimation(.spring()) {
                   self.showCreateAccount.toggle() //monitors state of page
               }
           }) {
               HStack {
                   Image(systemName: "arrow.left.square.fill")
                   .resizable()
                       .aspectRatio(contentMode: .fit)
                   .frame(height: 20)
                       .foregroundColor(Color.darkerAccent)
                   Text("Create account")
                       .accentColor(Color.darkerAccent)
               }
           }
       }
    
    var body: some View{
        createContent()
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(showCreateAccount: .constant(true))
    }
}
