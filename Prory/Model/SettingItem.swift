//
//  Setting.swift
//  Prory
//
//  Created by edwin on 21/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct SettingItem: Codable, Identifiable {
    var id: UUID
    var imageName: String
    var title: String
    
    #if DEBUG
    static let example = SettingItem(id: UUID(), imageName: "tabbar-home", title: "Home")
    #endif
}
