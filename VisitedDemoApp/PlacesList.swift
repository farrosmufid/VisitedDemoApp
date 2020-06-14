//
//  PlacesList.swift
//  VisitedDemoApp
//
//  Created by Farros Mufid on 13/6/20.
//  Copyright © 2020 Farros Mufid. All rights reserved.
//

import SwiftUI

struct PlacesList: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        TabView {
            NavigationView {
                   List {
                       ForEach(userData.places) {
                            places in NavigationLink (destination: PlacesDetail(places: places)) { PlacesImageRow(places: places)
                        }
                       }
                        .navigationBarTitle( "Visited", displayMode: .inline)
                   }
                }
                .tabItem {
                    Image(systemName: "house.fill")
                }
            NavigationView {
                List {
                    Toggle(isOn: $userData.showVisitedOnly) {
                        Text("Show Visited Only")
                    }
                    ForEach (userData.places) { places in
                        if !self.userData.showVisitedOnly || places.isVisited {
                        NavigationLink (destination: PlacesDetail(places: places)) {
                            PlacesRow(places: places)
                            }
                        }
                    }
                     .navigationBarTitle("Places", displayMode: .inline)
                }
            }
                .tabItem {
                    Image(systemName: "list.bullet")
                }
        }
    }
}

struct PlacesList_Previews: PreviewProvider {
    static var previews: some View {
        PlacesList().environmentObject(UserData())
    }
}
