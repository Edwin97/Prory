//
//  ContentView.swift
//  Prory
//
//  Created by edwin on 19/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([SettingItem].self, from: "setting.json")
    
//       let settingItem = Bundle.main.decode([SettingItem].self, from: "setting.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(header: Text(section.title)) {
                        Text(section.imageName)
                    }
                }
            }
            .navigationBarTitle("Menu")
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

