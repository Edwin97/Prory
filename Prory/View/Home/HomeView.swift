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
                        Image(systemName: "house")
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
                .background(Color.blue)
                
                
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
                    SummaryView()
                    SummaryView()
                    
                }
                
                HStack(spacing: 15) {
                    SummaryView()
                    SummaryView()
                }
                .padding(.top, 5)
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
