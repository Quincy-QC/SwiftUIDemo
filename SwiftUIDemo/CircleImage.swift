//
//  CircleImage.swift
//  SwiftUIDemo
//
//  Created by Quincy-QC on 2019/12/19.
//  Copyright © 2019 Quincy-QC. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("music")
            .resizable()
            .scaledToFit()
            .frame(width: 280.0,height:280)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
