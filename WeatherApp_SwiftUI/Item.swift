//
//  Item.swift
//  WeatherApp_SwiftUI
//
//  Created by Liliia Rudenko on 24/04/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
