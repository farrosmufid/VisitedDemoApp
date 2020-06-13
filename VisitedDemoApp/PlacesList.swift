//
//  PlacesList.swift
//  VisitedDemoApp
//
//  Created by Farros Mufid on 13/6/20.
//  Copyright © 2020 Farros Mufid. All rights reserved.
//

import SwiftUI

struct PlacesList: View {
    var body: some View {
        NavigationView {
            List (placesData) { places in
                NavigationLink (destination: PlacesDetail(places: places)) {
                    PlacesRow(places: places)
                }
            }
            .navigationBarTitle(Text("Places"))
        }
    }
}

struct PlacesList_Previews: PreviewProvider {
    static var previews: some View {
        PlacesList()
    }
}
