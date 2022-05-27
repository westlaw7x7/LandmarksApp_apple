//
//  RotatedBadgeSymbol.swift
//  LandmarksApp_apple
//
//  Created by Alexander Grigoryev on 27.05.2022.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
                 .padding(-60)
                 .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
