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
		
		UITabBar.appearance().isTranslucent = false
		UITabBar.appearance().barTintColor = UIColor.white
		UITabBar.appearance().backgroundColor = UIColor.white
	}
	
	var body: some View {
		NavigationView {
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
				
				SettingView()
					.tabItem {
						Image("tabbar-profile")
						Text("Profile")
				}
			}
			.accentColor(.blue)
		}
	}
}

struct AppView_Previews: PreviewProvider {
	static var previews: some View {
		AppView()
	}
}
