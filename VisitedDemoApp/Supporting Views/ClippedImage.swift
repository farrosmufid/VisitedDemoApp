//
//  ClippedImage.swift
//  VisitedDemoApp
//
//  Created by Farros Mufid on 12/6/20.
//  Copyright © 2020 Farros Mufid. All rights reserved.
//

import SwiftUI

struct ClippedImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height:250)
            .clipped()
    }
}

struct ClippedImage_Previews: PreviewProvider {
    static var previews: some View {
        ClippedImage(image: placesData[1].image)
    }
}
