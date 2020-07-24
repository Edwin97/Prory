//
//  Transaction.swift
//  Prory
//
//  Created by edwin on 24/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct Transaction: Codable, Identifiable {
    var id: String
    var date: String
    var rent: String
    var description: String
    var status: String
    
    #if DEBUG
    static let example = Property(id: "1", unit: "011C-120", name: "Serimba Terrace", location: "Bandar Bukit Mahkota", currentRent: "RM 2,212", totalRent: "RM 18,880")
    #endif
}
