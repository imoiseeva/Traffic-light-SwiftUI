//
//  ContentView.swift
//  Traffic light SwiftUI
//
//  Created by Irina Moiseeva on 25.03.2021.
//

import SwiftUI


enum ColorNow {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var colorNow = ColorNow.red
    
    var body: some View {
        VStack {
            CircleColor(color: .red, brightness: colorNow == .red ? 0 : 0.3)
            CircleColor(color: .yellow, brightness: colorNow == .yellow ? 0 : 0.3)
            CircleColor(color: .green, brightness: colorNow == .green ? 0 : 0.3)
            Spacer()
            Button(action: {changeColor()})
            {
                Text("Press")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding()
        }
        .padding()
    }
    
    private func changeColor() {
        
        switch colorNow {
        case .red: colorNow = .yellow
        case .yellow: colorNow = .green
        case .green: colorNow = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
