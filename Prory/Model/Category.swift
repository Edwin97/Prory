//
//  Category.swift
//  Prory
//
//  Created by edwin on 19/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct CategorySection: Codable, Identifiable {
    var id: UUID
    var image: String
    var total: String
    var title: String
}
