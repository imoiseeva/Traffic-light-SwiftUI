//
//  Circle.swift
//  Traffic light SwiftUI
//
//  Created by Irina Moiseeva on 25.03.2021.
//

import SwiftUI

struct CircleColor: View {
   @State var color: Color
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        CircleColor(color: .red)
    }
}



