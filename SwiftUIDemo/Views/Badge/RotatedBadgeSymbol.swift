//
//  RotatedBadgeSymbol.swift
//  SwiftUIDemo
//
//  Created by Quincy-QC on 2020/1/6.
//  Copyright © 2020 Quincy-QC. All rights reserved.
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
        RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
