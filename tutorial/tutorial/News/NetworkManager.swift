//
//  NetworkManager.swift
//  tutorial
//
//  Created by On Yi Wong on 2/3/2020.
//  Copyright © 2020 On Yi Wong. All rights reserved.
//

import Combine
import SwiftUI

class NetworkManager {
    
    //var didChange = PassthroughSubject<NetworkManager, Never>()
    
    
    init() {
        URLSession.shared.dataTask(with: URL(string: "https://news.rthk.hk/rthk/ch/latest-news.htm")!) { (data, response, error) in
            guard let htmlString = String(data: data!, encoding: .utf8) else {
              print("couldn't cast data into String")
              return
            }
            print(htmlString)
            
        }.resume()
    }
}
