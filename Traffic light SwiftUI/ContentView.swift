//
//  ContentView.swift
//  Traffic light SwiftUI
//
//  Created by Irina Moiseeva on 25.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    enum ColorNow {
        case red, yellow, green
    }
    private var colorNow = ColorNow.red
    
    var body: some View {
        VStack {
            Lights()
            
            Button(action: {changeColor()})
            {
                Text("Tap count")
                    .font(.title)
            }}
            
            .padding()
    }
    
    func changeColor() {
        
        switch colorNow {
        
        case .red:
            CircleColor(color: .red).brightness(0)
            CircleColor(color: .yellow)
                .brightness(0.5)
            CircleColor(color: .green)
                .brightness(0.5)
        case .yellow:
            CircleColor(color: .yellow)
                .brightness(0)
            CircleColor(color: .red)
                .brightness(0.5)
            CircleColor(color: .green)
                .brightness(0.5)
        case .green:
            CircleColor(color: .green)
                .brightness(0)
            CircleColor(color: .red)
                .brightness(0.5)
            CircleColor(color: .yellow)
                .brightness(0.5)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
