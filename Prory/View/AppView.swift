//
//  AppView.swift
//  Prory
//
//  Created by edwin on 19/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Home")
            }
            
            RequestView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Service Request")
            }
            
            ReportView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Reports")
            }
            
            TransactionView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Transactions")
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
