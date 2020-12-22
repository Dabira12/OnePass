//
//  LCSearchField.swift
//  SinglePass
//
//  Created by Dabira Akinwumi on 2020-11-09.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import SwiftUI

struct LCSearchField:View {
    @Binding var value: String
    var onEditingChanged: ((Bool)-> Void) = {_ in }
    var onCommit: (() -> ()) = {}
    
    
    var body: some View{
         HStack {
                   // 2
                   Image(systemName: "magnifyingglass")
                       .imageScale(.large)
                       .padding(.leading)
                   // 3
                   TextField("Search ...", text: self.$value
).padding(.vertical, 10)
         }.foregroundColor(Color.gray)
         .background(Color.background)
         .cornerRadius(13)
         .padding()
         .frame(height: 45)
         .shadow(color: Color.darkShadow, radius: 5, x: 0, y: 5)
    }
}

    

struct LCSearchField_Previews: PreviewProvider {
    static var previews: some View {
        LCSearchField(value: .constant(""))
    }
}
