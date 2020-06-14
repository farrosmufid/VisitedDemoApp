//
//  UserData.swift
//  VisitedDemoApp
//
//  Created by Farros Mufid on 14/6/20.
//  Copyright © 2020 Farros Mufid. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showVisitedOnly = false
    @Published var places = placesData
}
