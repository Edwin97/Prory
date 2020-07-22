//
//  SettingRow.swift
//  Prory
//
//  Created by edwin on 21/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct SettingRow: View {
    @State private var isOrder = false
    @State private var isDiscount = false
    
    var body: some View {
                
        VStack(spacing: 2) {
        
            HStack() {
                Image("edwin-profile")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color("background"), lineWidth: 5))
                    .padding(.trailing, 5)
                    .padding(.leading, 5)
                VStack(alignment: .leading, spacing: 2) {
                    Text("Edwin Chan")
                        .bold()
                        .font(.headline)
                    Text("Property Owner")
                        .font(.footnote)
                }
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("Edit")
                        .font(.headline)
                        .bold()
                        .padding(.trailing)
                }
            }
            .padding(15)
            .background(Color.white)
            
            HStack() {
                Image("setting-bank")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .padding(.trailing, 10)
                    .padding(.leading, 10)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Bank Account")
                        .bold()
                        .font(.headline)
                    Text("0 Cards linked")
                        .font(.footnote)
                }
                Spacer()
                Image(systemName: "chevron.right").padding(.trailing)
            }
            .padding()
            .background(Color.white)
            
            HStack() {
                Image("setting-address")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .padding(.trailing, 10)
                    .padding(.leading, 10)
                VStack(alignment: .leading, spacing: 5) {
                    Text("Adresses")
                        .bold()
                        .font(.headline)
                    Text("Add or remove an address")
                        .font(.footnote)
                }
                Spacer()
                Image(systemName: "chevron.right").padding(.trailing)
            }
            .padding()
            .background(Color.white)
            
            HStack() {
                Image("setting-earn")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .padding(.trailing, 10)
                    .padding(.leading, 10)
                VStack(alignment: .leading, spacing: 5) {
                    Text("Refer & Earn")
                        .bold()
                        .font(.headline)
                    Text("Get $5.00 for every friend you refer")
                        .font(.footnote)
                }
                Spacer()
                Image(systemName: "chevron.right").padding(.trailing)
            }
            .padding()
            .background(Color.white)
            .padding(.bottom, 10)
            
            HStack() {
                Text("Order Notification")
                    .bold()
                    .font(.headline)
                
                Spacer()
                
                Toggle(isOn: $isOrder) {
                    Text("")
                }.padding(.trailing)
            }
            .padding(.leading, 30)
            .padding(.top)
            .padding(.bottom)
            .background(Color.white)
            
            HStack() {
                Text("Discount Notification")
                    .bold()
                    .font(.headline)
                
                Spacer()
                
                Toggle(isOn: $isDiscount) {
                    Text("")
                }.padding(.trailing)
            }
            .padding(.leading, 30)
            .padding(.top)
            .padding(.bottom)
            .background(Color.white)
               .padding(.bottom, 10)
            
            HStack() {
                Text("Log Out")
                    .bold()
                    .font(.headline)
                
                Spacer()
                Image(systemName: "chevron.right").padding(.trailing)
            }
            .padding(.leading, 30)
            .padding(.top, 20)
            .padding(.bottom, 20)
            .padding(.trailing)
            .background(Color.white)
            
            
            VStack(spacing: 10) {
                Text("List your property")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(.top)
                
                
                Text("Listing your property is simple and usually takes about 10 minutes.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .font(.callout)
                
                Button(action: {
                    
                }) {
                    
                    Text("Get Started")
                        .bold()
                        .font(.callout)
                }.foregroundColor(.black)
                    .padding(12)
                    .padding(.leading)
                    .padding(.trailing)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.bottom)
                
                
            }
            .padding()
            .background(
                Image("property-background")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width - 45, height: 210)
                    .scaledToFill()
                    .clipped()
                    .contrast(0.7)
                    .cornerRadius(10)
            )
            .padding()
            .padding(.top)
            .padding(.bottom)
        }
    }
}

struct SettingRow_Previews: PreviewProvider {
    static var previews: some View {
        SettingRow()
    }
}
