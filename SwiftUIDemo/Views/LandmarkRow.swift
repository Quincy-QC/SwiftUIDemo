//
//  LandmarkRow.swift
//  SwiftUIDemo
//
//  Created by Quincy-QC on 2020/1/3.
//  Copyright © 2020 Quincy-QC. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmardData[0])
            LandmarkRow(landmark: landmardData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
