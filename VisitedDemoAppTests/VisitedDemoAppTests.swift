//
//  VisitedDemoAppTests.swift
//  VisitedDemoAppTests
//
//  Created by Farros Mufid on 12/6/20.
//  Copyright © 2020 Farros Mufid. All rights reserved.
//

import XCTest
import CoreLocation

@testable import VisitedDemoApp

class VisitedDemoAppTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFirstPlacesDataHasExpectedValues() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let firstPlacesData = placesData[0]
        
        XCTAssertEqual(firstPlacesData.name, "Turtle Rock", "Place name was not Turtle Rock.")
        XCTAssertEqual(firstPlacesData.category.rawValue, "Featured", "Placencategory was not Featured.")
        XCTAssertEqual(firstPlacesData.city, "Twentynine Palms", "Place data city was not Twentynine Palms.")
        XCTAssertEqual(firstPlacesData.state, "California", "Place data state was not California.")
        XCTAssertEqual(firstPlacesData.id, 1001, "Place data id was not 1001.")
        XCTAssertEqual(firstPlacesData.isFeatured, true, "Place data isFeatured was false.")
        XCTAssertEqual(firstPlacesData.isVisited, true, "Place data isVisited was false.")
        XCTAssertEqual(firstPlacesData.park, "Joshua Tree National Park", "Place data park was not Joshua Tree National Park.")
        XCTAssertEqual(firstPlacesData.image, ImageStore.shared.image(name: "turtlerock"), "Place data image was not Turtle Rock.")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
