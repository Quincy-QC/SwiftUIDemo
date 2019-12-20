//
//  MapView.swift
//  SwiftUIDemo
//
//  Created by Quincy-QC on 2019/12/20.
//  Copyright © 2019 Quincy-QC. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    typealias UIViewType = MKMapView
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MapView.UIViewType {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MapView.UIViewType, context: UIViewRepresentableContext<MapView>) {
        let coordinate = CLLocationCoordinate2D(latitude: 31.47, longitude: 119.58)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
