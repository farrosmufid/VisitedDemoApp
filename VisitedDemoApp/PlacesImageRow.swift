//
//  PlacesImageRow.swift
//  VisitedDemoApp
//
//  Created by Farros Mufid on 14/6/20.
//  Copyright © 2020 Farros Mufid. All rights reserved.
//

import SwiftUI

struct PlacesImageRow: View {
     var places: Places
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(places.name)
                .font(.title)
                .padding(.leading, 5)
            HStack {
                Text(places.city)
                    .font(.headline)
                    .padding(.leading, 5)
                Text(places.state)
                    .font(.subheadline)
                Spacer()
                if places.category.rawValue == "Featured" {
                    Text(places.category.rawValue)
                        .font(.headline)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .padding(.trailing, 5)

                }
                else {
                    Text(places.category.rawValue)
                    .font(.headline)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .padding(.trailing, 5)
                }
            }
            places.image
                .resizable()
                .scaledToFit()
            HStack {
                if places.isVisited {
                    Image(systemName: "checkmark.circle.fill")
                        .imageScale(.medium)
                        .foregroundColor(.green)
                        .padding(.leading, 5)

                    Text("You have visited this place")
                } else {
                    Image(systemName: "xmark.circle.fill")
                        .imageScale(.medium)
                        .foregroundColor(.red)
                        .padding(.leading, 5)
                    Text("You haven't visited this place")
                }
            }
        }
    }
}

struct PlacesImageRow_Previews: PreviewProvider {
    static var previews: some View {
        PlacesImageRow(places: placesData[0])
    }
}
