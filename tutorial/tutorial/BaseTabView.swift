//
//  BaseTabView.swift
//  tutorial
//
//  Created by On Yi Wong on 2/3/2020.
//  Copyright © 2020 On Yi Wong. All rights reserved.
//

import SwiftUI

struct BaseTabView: View {
    @State private var currentTab = 1
    var body: some View {
        
        TabView(selection: $currentTab) {
            ContentView()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Color") }
                .tag(1)
            Text("coming soon 2")
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("2") }
                .tag(2)
        }
        .font(.headline)
    }
}

struct BaseTabView_Previews: PreviewProvider {
    static var previews: some View {
        BaseTabView()
    }
}
