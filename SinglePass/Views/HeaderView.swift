//
//  HeaderView.swift
//  SinglePass
//
//  Created by Dabira Akinwumi on 2020-11-11.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import SwiftUI

struct HeaderView:View {
    @State private var selectedFilter = Filter.AllItems
    var onSelect: ((Filter)->()) = {_ in }
    
    var allFilters = Filter.AllCases()
    
    
    var body: some View{
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(Filter.allCases,id:\.self){ filter in FilterView(filter: filter, isSelected: .constant(self.selectedFilter == filter), onSelect:{ selected in withAnimation(.spring()){
                        self.selectedFilter = selected
                    
                }
                self.onSelect(selected)
                
                

            } )

                }

               
                
            }
            
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
