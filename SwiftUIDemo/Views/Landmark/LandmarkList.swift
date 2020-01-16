//
//  LandmarkList.swift
//  SwiftUIDemo
//
//  Created by Quincy-QC on 2020/1/3.
//  Copyright © 2020 Quincy-QC. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
        List {            
            Toggle(isOn: $userData.showFavoritesOnly) {
                Text("Show Favorites only")
            }
            
            ForEach(userData.landmarks) { landmark in
                if !self.userData.showFavoritesOnly || landmark.isFavorite {
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
        }
        .navigationBarTitle(Text("Landmarks"))
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { devicename in
//            LandmarkList()
//                .previewDevice(PreviewDevice(rawValue: devicename))
//                .previewDisplayName(devicename)
//        }
//        .environmentObject(UserData())
        NavigationView {
            LandmarkList()
                .environmentObject(UserData())
        }
    }
}
