// File: ContentView.swift
// Project: SinglePass

// Created at 12/02/2020 by Liquidcoder
// Visit https://www.liquidcoder.com for more
// Copyright © Liquidcoder. All rights reserved

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    var body: some View {
        VStack {
              NavBar(showMenu: self.$showMenu)
              HomeView()
         }.edgesIgnoringSafeArea(.top)
        .background(Color.background)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}
