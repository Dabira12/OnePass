//
//  PasswordGeneratorView.swift
//  SinglePass
//
//  Created by Dabira Akinwumi on 2020-11-24.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import SwiftUI

struct PasswordGeneratorView: View {
    @State private var password = ""
         @Binding var generatedPassword: String
    @ObservedObject private var passwordService = PasswordGeneratorService()
    
    
    var body: some View{
        VStack(spacing: 30) {
                    Text("Generate password").font(.title).bold()
                    
                    Group {
                        SharedTextfield(value: self.$passwordService.passowrd, header: "Generated Password", placeholder: "Your new password", errorMessage: "", showUnderline: false, onEditingChanged: { flag in
                            }).padding()
                    }.background(Color.background)
                        .cornerRadius(10).neumorphic()
                        
                    VStack(spacing: 10){
                        Toggle(isOn: $passwordService.options.lowercase) {
                            Text("Lowercase")
                        }
                        
                        Toggle(isOn: $passwordService.options.uppercase) {
                            Text("Uppercase")
                        }
                        
                        Toggle(isOn: $passwordService.options.specialCharacters) {
                            Text("Special Characters")
                        }
                        
                        Toggle(isOn: $passwordService.options.digits) {
                            Text("Digits")
                        }
                        
                            
                        HStack {
                                            Slider(value: self.$passwordService.options.length, in: 1...30, step: 1)
                                                .accentColor(Color.accent)
                                            
                                            Text("\(Int(self.passwordService.options.length))")
                                                .font(.system(size: 20, weight: .bold))
                                                .foregroundColor(.gray)
                                            .frame(width: 30, height: 30)
                                            
                                        }
                        
                    }.padding()
                        .background(Color.background)
                        .cornerRadius(10)
                        .neumorphic()

                }.padding(.horizontal)
                    .frame(maxHeight: .infinity)
                     .background(Color.background)
                    .edgesIgnoringSafeArea(.all)
    }
}

struct PasswordGeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordGeneratorView(generatedPassword: .constant(""))
    }
}


