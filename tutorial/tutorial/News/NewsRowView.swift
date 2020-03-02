//
//  NewsRowView.swift
//  tutorial
//
//  Created by On Yi Wong on 2/3/2020.
//  Copyright © 2020 On Yi Wong. All rights reserved.
//

import SwiftUI

struct NewsRowView: View {
    
    @State var newsTitle: String
    @State var newsDate: String
    var body: some View {
        HStack {

            VStack(alignment: .leading) {
                Text(newsTitle)
                    .font(.title)
                Text(newsDate)
                    .font(.body)
            }
            
            Spacer()

        }
    .padding(12)
        
    }
}

struct NewsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NewsRowView(newsTitle: "Hello, I'm Title", newsDate: "20 Oct 2020")
                .previewLayout(.fixed(width: 300, height: 70))
            NewsRowView(newsTitle: "Hello, I'm Title", newsDate: "20 Oct 2020")
                .previewLayout(.fixed(width: 300, height: 70))
        }

    }
}
