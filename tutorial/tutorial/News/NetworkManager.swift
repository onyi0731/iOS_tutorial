//
//  NetworkManager.swift
//  tutorial
//
//  Created by On Yi Wong on 2/3/2020.
//  Copyright © 2020 On Yi Wong. All rights reserved.
//

import Combine
import SwiftUI
import WebKit

class NetworkManager {
    init() {
        URLSession.shared.dataTask(with: URL(string: "https://news.rthk.hk/rthk/ch/latest-news.htm")!) { (data, response, error) in

            guard let data = data else { return }
            let htmlString = String(data: data, encoding: .utf8)!

        }.resume()
    }
}
