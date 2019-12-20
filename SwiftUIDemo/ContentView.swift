//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Quincy-QC on 2019/12/19.
//  Copyright © 2019 Quincy-QC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView().frame(height: 300)
            CircleImage()
                .offset(y: -140)
                .padding(.bottom, -140)
            VStack(alignment: .leading) {
                Text("Quincy QC")
                    .font(.title)
                HStack {
                    Text("Here is JiangSu ChangZhou")
                        .font(.subheadline)
                    Spacer()
                    Text("China")
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
