//
//  StringExt.swift
//  SinglePass
//
//  Created by Dabira Akinwumi on 2020-11-16.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import Foundation

extension String{
    func getImageName() -> String {
         let urlComponents = self.lowercased().split(separator: ".")
         let count = urlComponents.count

         if urlComponents.isEmpty{
             return "placeholder"
         }
         return count > 2 ? String(urlComponents[count - 2]) : String(urlComponents.first ?? "")
     }
}


