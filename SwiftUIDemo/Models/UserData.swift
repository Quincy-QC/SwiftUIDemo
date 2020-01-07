//
//  UserData.swift
//  SwiftUIDemo
//
//  Created by Quincy-QC on 2020/1/3.
//  Copyright © 2020 Quincy-QC. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
