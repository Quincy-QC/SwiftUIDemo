//
//  Landmark.swift
//  SwiftUIDemo
//
//  Created by Quincy-QC on 2019/12/20.
//  Copyright © 2019 Quincy-QC. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Codable, Identifiable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    enum Category: String, Codable, CaseIterable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
}

extension Landmark {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}
