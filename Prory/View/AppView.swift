//
//  AppView.swift
//  Prory
//
//  Created by edwin on 19/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct AppView: View {
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor(named: "default")
        UITabBar.appearance().backgroundColor = .white
      }
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image("tabbar-home")
                    Text("Home")
            }
            
            ServiceView()
                .tabItem {
                    Image("tabbar-service")
                    Text("Services")
            }
            
            ReportView()
                .tabItem {
                    Image("tabbar-report")
                    Text("Reports")
            }
            
            TransactionView()
                .tabItem {
                    Image("tabbar-transaction")
                    Text("Transactions")
            }
        }
        .accentColor(.blue)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
