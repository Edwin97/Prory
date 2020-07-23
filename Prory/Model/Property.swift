//
//  Property.swift
//  Prory
//
//  Created by edwin on 22/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import Foundation

struct Property: Codable, Identifiable {
    var id: String
    var unit: String
    var name: String
    var location: String
    var currentRent: String
    var totalRent: String
    
    #if DEBUG
    static let example = Property(id: "1", unit: "011C-120", name: "Serimba Terrace", location: "Bandar Bukit Mahkota", currentRent: "RM 2,212", totalRent: "RM 18,880")
    #endif
}
