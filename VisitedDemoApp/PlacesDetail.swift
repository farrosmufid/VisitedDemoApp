//
//  PlacesDetail.swift
//  VisitedDemoApp
//
//  Created by Farros Mufid on 12/6/20.
//  Copyright © 2020 Farros Mufid. All rights reserved.
//

import SwiftUI

struct PlacesDetail: View {
    @EnvironmentObject var userData: UserData
    var places: Places
    
    var placesIndex: Int {
        userData.places.firstIndex(where: {index in index.id == places.id})!
    }
    
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
                HStack {
                    Text(places.name)
                        .font(.title)
                    Spacer()
                    Button(action: { self.userData.places[self.placesIndex].isVisited.toggle() }) {
                        if self.userData.places[self.placesIndex].isVisited {
                            Image(systemName: "bookmark.fill")
                                .imageScale(.medium)
                                .foregroundColor(.red)
                                .accessibility(identifier: "bookmarkFill")

                        } else {
                             Image(systemName: "bookmark")
                                .imageScale(.medium)
                                .foregroundColor(.red)
                                .accessibility(identifier: "bookmark")
                        }
                    }
                     
                }
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
        PlacesDetail(places: placesData[0]).environmentObject(UserData())
    }
}
