//
//  Profile.swift
//  SwiftUIDemo
//
//  Created by Quincy-QC on 2020/1/8.
//  Copyright © 2020 Quincy-QC. All rights reserved.
//

import Foundation

struct Profile {
    var userName: String
    var prefersNotifications: Bool
    var seasonalPhoto: Season
    var goalDate: Date
    
    static let `default` = Self(userName: "QC")
    
    init(userName: String, prefersNotifications: Bool = true, seasonalPhoto: Season = .winter) {
        self.userName = userName
        self.prefersNotifications = prefersNotifications
        self.seasonalPhoto = seasonalPhoto
        self.goalDate = Date()
    }
    
    enum Season: String, CaseIterable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
    }
}
