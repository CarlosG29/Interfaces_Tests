//
//  Item.swift
//  PruebaInterfaz
//
//  Created by Carlos Eduardo Gurdian on 10/11/24.
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
