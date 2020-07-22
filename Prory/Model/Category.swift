//
//  Category.swift
//  Prory
//
//  Created by edwin on 19/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct KeySummary: Codable, Identifiable {
    var id: UUID
    var imageName: String
    var total: String
    var title: String
    
    #if DEBUG
    static let example = KeySummary(id: UUID(), imageName: "house", total: "100", title: "Rented Property")
    #endif
}
