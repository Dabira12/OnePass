//
//  SectionTile.swift
//  SinglePass
//
//  Created by Dabira Akinwumi on 2020-11-16.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import SwiftUI

struct SectionTitle:View {
    var title: String
    
    var body: some View{
        Text(title)
                    .font(.title)
                    .frame(maxHeight: .infinity)
                    .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                    .padding(.leading, 40)
                    .background(Color.background)
    }
}
