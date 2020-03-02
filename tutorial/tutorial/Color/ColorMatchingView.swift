//
//  ColorMatchingView.swift
//  tutorial
//
//  Created by On Yi Wong on 2/3/2020.
//  Copyright © 2020 On Yi Wong. All rights reserved.
//

import SwiftUI

struct ColorMatchingView: View {
    
    let redTarget = Double.random(in: 0..<1)
    let greenTarget = Double.random(in: 0..<1)
    let blueTarget = Double.random(in: 0..<1)
    @State var redGuess: Double
    @State var greenGuess: Double
    @State var blueGuess: Double
    @State var showAlert = false
    
    func calculateScore() -> Int {
        let redDiff = redGuess - redTarget
        let blueDiff = blueGuess - blueTarget
        let greenDiff = greenGuess - greenTarget
        let diff = sqrt(redDiff*redDiff+blueDiff*blueDiff+greenDiff*greenDiff)
        return Int((1.0-diff) * 100.0 + 0.5)
    }
    
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
            
            Button(action: {
                self.showAlert = true
            }) {
                Text("Click")
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Score"), message: Text("\(calculateScore())"))
            }
            
            VStack {
                ColorSliderView(value: $redGuess, textColor: .red)
                ColorSliderView(value: $greenGuess, textColor: .green)
                ColorSliderView(value: $blueGuess, textColor: .blue)
            }
        }
    }
}

#if DEBUG
struct ColorMatchingView_Previews: PreviewProvider {
    static var previews: some View {
        ColorMatchingView(redGuess: 0.5, greenGuess: 0.5, blueGuess: 0.5 )
//            .previewLayout(.fixed(width: 568, height: 320))
    }
}
#endif

struct ColorSliderView: View {
    @Binding var value: Double
    var textColor: Color
    var body: some View {
        HStack {
            Text("0")
                .foregroundColor(textColor)
            Slider(value: $value)
            Text("255")
                .foregroundColor(textColor)
        }
        .padding()
    }
}
