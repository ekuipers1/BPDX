//
//  BeerModel.swift
//  BPDX
//
//  Created by Erik Kuipers on 12.10.20.
//

import SwiftUI

// MARK: - Beer DATA MODEL

struct Beer: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var detail: String
    var gradientColors: [Color]
    var lightcolor: String
    var darkcolor: String
    var alc: Double
    var ibu: Double
    var malthops: [String]
    var availability: String
    var availabilityIn : [String]
    
}
