//
//  Service.swift
//  Prory
//
//  Created by edwin on 23/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct Service: Codable, Identifiable {
    var id: UUID
    var date: String
    var unit: String
    var name: String
    var description: String
    var by: String
}
