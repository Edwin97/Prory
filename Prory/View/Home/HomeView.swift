//
//  HomeView.swift
//  Prory
//
//  Created by edwin on 19/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)
            VStack() {
                VStack(alignment: .leading) {
                    
                    HStack(spacing: 10){
                        Text("Dashboard")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            
                            Image(systemName: "bell")
                                .font(.system(size: 23))
                                .foregroundColor(.white)
                        }
                    }
                    
                    HStack(spacing: 10){
                        Image("wallet")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.black.opacity(0.06))
                            .cornerRadius(15)
                        VStack(alignment: .leading){
                            Text("Total Rent Revenue")
                                .font(.subheadline)
                                .foregroundColor(.white)
                            Text("RM 43,00,00")
                                .bold()
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        Spacer()
                    }
                    
                    HStack {
                        Text("View My Properties")
                            
                            .font(.subheadline)
                            .foregroundColor(.white)
                        Image(systemName: "arrow.right")
                            .foregroundColor(.white)
                    }
                }
                .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)!)
                .padding()
                .background(Image("dashboard-background")
                .resizable()
                .scaledToFill()
                )
                
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Summary")
                            .font(.headline)
                        Text("Key statistics of your account")
                            .font(.subheadline)
                    }
                    Spacer()
                }
                .padding()
                
                HStack(spacing: 15) {
                    SummaryView(item: KeySummary(id: UUID(), imageName: "property", total: 04, title: "Managed property"))
                    SummaryView(item: KeySummary(id: UUID(), imageName: "lease", total: 11, title: "Propert Leases"))
                }
                
                HStack(spacing: 15) {
                    SummaryView(item: KeySummary(id: UUID(), imageName: "service", total: 88, title: "Service Requests"))
                    SummaryView(item: KeySummary(id: UUID(), imageName: "inspection", total: 31, title: "House Inpsections"))
                }
                
                Spacer(minLength: 0)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
