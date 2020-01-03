//
//  CircleImage.swift
//  SwiftUIDemo
//
//  Created by Quincy-QC on 2019/12/19.
//  Copyright © 2019 Quincy-QC. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .frame(width: 240.0, height:240)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: ImageStore.shared.image(name: "chilkoottrail"))
    }
}
