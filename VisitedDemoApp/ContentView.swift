//
//  ContentView.swift
//  VisitedDemoApp
//
//  Created by Farros Mufid on 12/6/20.
//  Copyright © 2020 Farros Mufid. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height:200)
            
            ClippedImage()
                .offset(y: -140)
                .padding(.bottom, -130)
            
            VStack (alignment: .leading) {
                Text("Komodo Island")
                    .font(.title)
                HStack (alignment: .top) {
                    Text("East Nusa Tengara")
                        .font(.subheadline)
                    Spacer()
                    Text("Banda Arc")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
