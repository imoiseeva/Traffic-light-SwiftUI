//
//  Circle.swift
//  Traffic light SwiftUI
//
//  Created by Irina Moiseeva on 25.03.2021.
//

import SwiftUI

struct CircleColor: View {
   let color: Color
    let brightness: Double
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .brightness(brightness)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        CircleColor(color: .red, brightness: 0)
    }
}



