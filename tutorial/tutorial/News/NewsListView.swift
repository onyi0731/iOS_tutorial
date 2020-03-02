//
//  NewsListView.swift
//  tutorial
//
//  Created by On Yi Wong on 2/3/2020.
//  Copyright © 2020 On Yi Wong. All rights reserved.
//

import SwiftUI

struct NewsListView: View {
    
    @State var networkManager = NetworkManager()
    
    var body: some View {
        List {
            NewsRowView(newsTitle: "Title 1", newsDate: "1st Oct 2019")
            NewsRowView(newsTitle: "Title 2", newsDate: "1st Aug 2019")
            NewsRowView(newsTitle: "Title 3", newsDate: "1st Mar 2019")
            NewsRowView(newsTitle: "Title 4", newsDate: "1st Jan 2019")
            NewsRowView(newsTitle: "Title 5", newsDate: "1st Dec 2018")
        }
    }
}

struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView()
    }
}
