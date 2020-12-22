//
//  EditFormView.swift
//  SinglePass
//
//  Created by Dabira Akinwumi on 2020-11-19.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import SwiftUI

struct EditFormView: View{
    
    @Binding var showDetails: Bool
    @State private var username = ""
        @State private var password = ""
        @State private var website = ""
        @State private var passwordNote = ""
        @State private var noteName = ""
        @State private var noteContent = ""
        @State private var favoriteImage = "heart"
        @State private var formType = FormType.Password
    
    var body: some View{
        createBodyContent()
    }
     fileprivate func createBodyContent() -> some View {
        VStack {
                   FormHeader(showDetails: self.$showDetails, formType: self.$formType)
                   ScrollView {
                       VStack {
                           if formType == FormType.Password{
                               createPasswordForm()
                           }
                           else {
                               createNoteForm()
                           }
                        
                        HStack(spacing: 20) {
                                           createSaveButton()
                                           createHeartButton()
                                       }.padding(.horizontal)
                           
                       }
                   }
               }
    }
    
    fileprivate func createNoteForm() -> some View{
        VStack(spacing: 40) {
                    SharedTextfield(value: self.$noteName, header: "Title",placeholder: "Your note title goes here")
                    SharedTextfield(value: self.$noteContent, header: "Note",placeholder: "You can write anything here...", showUnderline: false)
                    
                }.padding()
    }
      
      fileprivate func createPasswordForm()-> some View{
        VStack(spacing: 40) {
                          SharedTextfield(value: self.$username)
                          VStack(alignment: .leading) {
                              PasswordField(value: self.$password, header: "Password",placeholder: "Make sure the password is secure")
                              Button(action: {
                              }) {
                                  Text("Generate password")
                                      .foregroundColor(.accent)
                              }
                          }
                          SharedTextfield(value: self.$website, header: "Website", placeholder: "https://")
                          SharedTextfield(value: self.$passwordNote, header: "Note",placeholder: "You can write anything here...", showUnderline: false)
                      }.padding()
        }
    
        fileprivate func createSaveButton() -> LCButton {
              return LCButton(text: "Save", backgroundColor: Color.accent) {
                  switch self.formType{
                  case .Password:
                      break
                  case .Note:
                      break
                  }
              }
          }
          
       fileprivate func createHeartButton() -> some View {
           
           Button(action: {
               
           }) {
               Image(systemName: self.favoriteImage)
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                   .frame(width: 30)
                   .foregroundColor( favoriteImage == "heart" ? Color.gray : Color.orange)
           }
       }
}

struct EditFormView_Previews: PreviewProvider {
    static var previews: some View {
        EditFormView(showDetails: .constant(true))
    }
}

