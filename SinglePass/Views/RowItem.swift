//
//  RowItems.swift
//  SinglePass
//
//  Created by Dabira Akinwumi on 2020-11-12.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import SwiftUI

struct RowItem:View {
    var body: some View{
        HStack{
                   Image("note")
                       .resizable()
                       .aspectRatio(contentMode: .fit)
                       .frame(width: 50, height: 50)
                   
                   VStack(alignment: .leading) {
                       Text("No name")
                           .font(.system(size: 20))
                           .padding(.bottom, 5)
                       Text( "N/A")
                           .foregroundColor(Color.gray)
                           .font(.callout)
                   }
        }.padding(.horizontal)
        .frame(maxWidth: .infinity, minHeight: 80, alignment: .leading)
            .background(Color.background)
             .cornerRadius(20)
             .padding(.vertical).listRowBackground(Color.background)
    }
}

struct RowItems_Previews: PreviewProvider {
    static var previews: some View {
        RowItem()
    }
}
