//
//  SettingView.swift
//  Prory
//
//  Created by edwin on 21/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct SettingView: View {
    let settingItem = [
        SettingItem(id: UUID(), imageName: "tabbar-service", title: "Service"),
        SettingItem(id: UUID(), imageName: "tabbar-service", title: "Service 1"),
        
        
    ]
    
    var body: some View {
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing:2) {
                HStack(spacing: 10){
                    Text("Setting")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    Spacer()
                }
                .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)!)
                .padding()
                .background(Color.white)
                ScrollView(.vertical, showsIndicators: false) {
                        SettingRow()
                }
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
