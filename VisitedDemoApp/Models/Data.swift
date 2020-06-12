//
//  Data.swift
//  VisitedDemoApp
//
//  Created by Farros Mufid on 12/6/20.
//  Copyright © 2020 Farros Mufid. All rights reserved.
//

import UIKit
import SwiftUI
import CoreLocation

let placesData: [Places] = load("placesData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    // check if filename exist otherwise returns an error
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
           else {
               fatalError("Couldn't find \(filename) in main bundle.")
       }
    
    // check contents of the file otherwise returns an error
    do {
        data = try Data(contentsOf: file)
        
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    // parse the json file
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
        
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

final class ImageStore {
    
    fileprivate var images : [String: CGImage] = [:]
    fileprivate static var scale = 2
    
    static var shared = ImageStore()
    
    // returns the image from a given string
    func image(name: String) -> Image {
        let index = _guaranteeImage(name: name)
        
        return Image(images.values[index], scale: CGFloat(ImageStore.scale), label: Text(name))
    }
    
    static func loadImage(name: String) -> CGImage {
        guard
            let url = Bundle.main.url(forResource: name, withExtension: "jpg"),
            let imageSource = CGImageSourceCreateWithURL(url as NSURL, nil),
            let image = CGImageSourceCreateImageAtIndex(imageSource, 0, nil)
        else {
            fatalError("Couldn't load image \(name).jpg from main bundle.")
        }
        return image
    }
    
    // return index of image from a given string
    
    fileprivate func _guaranteeImage(name: String) -> Dictionary<String, CGImage>.Index {
        if let index = images.index(forKey: name) { return index }
        
        // if index not found, create a new dictionary and return the index
        images[name] = ImageStore.loadImage(name: name)
        return images.index(forKey: name)!
    }
}
