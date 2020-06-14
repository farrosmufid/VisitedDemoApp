//
//  placesRow.swift
//  VisitedDemoApp
//
//  Created by Farros Mufid on 13/6/20.
//  Copyright © 2020 Farros Mufid. All rights reserved.
//

import SwiftUI

struct PlacesRow: View {
    var places: Places
    
    var body: some View {
        HStack {
            places.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(places.name)
            Spacer()
            if places.isVisited {
                Image(systemName: "checkmark.circle.fill")
                    .imageScale(.medium)
                    .foregroundColor(.green)
                
            }
        }
    }
}

struct PlacesRow_Previews: PreviewProvider {
    static var previews: some View {
        PlacesRow(places: placesData[0])
    }
}
