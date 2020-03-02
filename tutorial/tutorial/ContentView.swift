//
//  ContentView.swift
//  tutorial
//
//  Created by On Yi Wong on 2/3/2020.
//  Copyright © 2020 On Yi Wong. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let redTarget = Double.random(in: 0..<1)
    let greenTarget = Double.random(in: 0..<1)
    let blueTarget = Double.random(in: 0..<1)
    @State var redGuess: Double
    @State var greenGuess: Double
    @State var blueGuess: Double
    
    var body: some View {
        VStack {
            HStack {
                // Target Color Block
                VStack {
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(Color(red: redTarget, green: greenTarget, blue: blueTarget, opacity: 1.0))
                    Text("Match this Color")
                }
                // Guess Color Block
                VStack {
                    RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color(red: redGuess, green: greenGuess, blue: blueGuess, opacity: 1.0))
                    HStack {
                        Text("R: \(Int(redGuess * 255.0))")
                        Text("G: \(Int(greenGuess * 255.0))")
                        Text("B: \(Int(blueGuess * 255.0))")
                    }
                }
            }
            .padding()
            
            Image(systemName: "star.fill")
                .imageScale(.large)
                .foregroundColor(.red)
            
            VStack {
                HStack {
                    Text("0")
                        .foregroundColor(.red)
                    Slider(value: $redGuess)
                    Text("255")
                        .foregroundColor(.red)
                }
                .padding()
                HStack {
                    Text("0")
                        .foregroundColor(.green)
                    Slider(value: $greenGuess)
                    Text("255")
                        .foregroundColor(.green)
                }
                .padding()
                HStack {
                    Text("0")
                        .foregroundColor(.blue)
                    Slider(value: $blueGuess)
                    Text("255")
                        .foregroundColor(.blue)
                }
                .padding()
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(redGuess: 0.5, greenGuess: 0.5, blueGuess: 0.5 )
    }
}
#endif
