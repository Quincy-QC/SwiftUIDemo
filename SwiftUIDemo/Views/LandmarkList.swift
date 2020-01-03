//
//  LandmarkList.swift
//  SwiftUIDemo
//
//  Created by Quincy-QC on 2020/1/3.
//  Copyright © 2020 Quincy-QC. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmardData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { devicename in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: devicename))
                .previewDisplayName(devicename)
        }
    }
}
