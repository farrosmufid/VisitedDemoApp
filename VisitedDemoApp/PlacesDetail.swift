//
//  PlacesDetail.swift
//  VisitedDemoApp
//
//  Created by Farros Mufid on 12/6/20.
//  Copyright © 2020 Farros Mufid. All rights reserved.
//

import SwiftUI

struct PlacesDetail: View {
    var places: Places
    
    var body: some View {
        VStack {
            MapView(coordinate: places.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height:200)
            ClippedImage(image: places.image)
                .frame(height:200)
                .clipped()
                .offset(y: -10)
                .padding(.bottom, -20)
            VStack (alignment: .leading) {
                Text(places.name)
                    .font(.title)
                HStack(alignment: .top) {
                    Text(places.park)
                        .font(.subheadline)
                    Spacer()
                    Text(places.state)
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
        .navigationBarTitle(Text(places.name), displayMode: .inline)
    }
}

struct PlacesDetail_Previews: PreviewProvider {
    static var previews: some View {
        PlacesDetail(places: placesData[0])
    }
}
