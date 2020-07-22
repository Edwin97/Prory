//
//  Discussion.swift
//  Prory
//
//  Created by edwin on 22/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct Discussion: Codable, Identifiable {
    var id: UUID
    var title: String
    var name: String
    var imageName: String
    var message: String
    var dateTime: String
    
    #if DEBUG
    static let example = Discussion(id: UUID(), title: "Request Closed", name: "Edwin Chan", imageName: "edwin-profile", message: "", dateTime: "9th Nov 2019, 4:30 PM")
    #endif
}
