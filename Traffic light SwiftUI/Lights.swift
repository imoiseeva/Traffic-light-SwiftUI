//
//  Lights.swift
//  Traffic light SwiftUI
//
//  Created by Irina Moiseeva on 27.03.2021.
//

import SwiftUI

struct Lights: View {
    var body: some View {
        VStack {
            CircleColor(color: .red)
            CircleColor(color: .yellow)
            CircleColor(color: .green)
        }
    }
}

struct Lights_Previews: PreviewProvider {
    static var previews: some View {
        Lights()
    }
}
