//
//  TransactionView.swift
//  Prory
//
//  Created by edwin on 19/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct TransactionView: View {
    var body: some View {
        
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                VStack(alignment: .leading) {
                    HStack(spacing: 10){
                        Text("Transactions")
                            .font(.title)
                            .fontWeight(.bold)
                            
                        Spacer()
                    }
                }
                .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)!)
                .padding()
                .background(Color.white)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack() {
                        HStack() {
                            VStack(alignment: .leading) {
                                
                                VStack(alignment: .leading, spacing: 2) {
                                    Text("B-1402")
                                        .font(.caption)
                                    
                                    Text("Lodha Aurum Grande")
                                        .font(.subheadline)
                                        .bold()
                            
                                    Text("Versova, Mumbai")
                                        .font(.caption)
                                      
                                }
                                
                                HStack {
                                    VStack(alignment: .leading, spacing: 2) {
                                        Text("Ramesh Morya")
                                            .font(.subheadline)
                                            .bold()
                                      
                                        
                                        Text("Property Manager")
                                            .font(.caption)
                                           
                                    }
                                    
                                    Spacer()
                                    
                                    Image(systemName: "message.circle.fill")
                                        .resizable()
                                        .frame(width: 35, height: 35)
                                        .foregroundColor(Color.blue)
                                     
                                    
                                    Image(systemName: "phone.circle.fill")
                                        .resizable()
                                        .frame(width: 35, height: 35)
                                        .foregroundColor(Color.blue)
                                       

                                }
                                Text("Leased from July 2019 - 2019")
                                    .font(.subheadline)
                                    
                            }
                            Spacer()
                        }.padding([.top, .leading, .trailing])
                        
                        HStack() {
                            
                            VStack(alignment: .leading) {
                                HStack() {
                                    
                                    VStack(alignment: .leading) {
                                        Button(action: {}) {
                                            HStack() {
                                                Text("Owner Details")
                                                    .font(.footnote)
                                                    .bold()
                                                  
                                                Spacer()
                                                Image(systemName: "info.circle")
                                                   
                                            }
                                        }
                                    }
                                    
                                }
                            }
                            Spacer()
                        }
                        .padding()
                    }
                    .background(  Color.white)
                        .cornerRadius(10)
                        .padding(.leading)
                        .padding(.trailing)
                        .padding(.top)
                    
                    Button(action: {}) {
                        HStack() {
                            Spacer()
                            Text("Request Rent Receipt".uppercased())
                                .font(.subheadline)
                                .bold()
                                .foregroundColor(.white)
                            
                            Image(systemName: "arrow.right")
                                .foregroundColor(.white)
                            
                            Spacer()
                        }
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.yellow)
                    .cornerRadius(10)
                    .padding(.leading)
                    .padding(.trailing)
                    
                    ForEach(0..<2) { _ in
                        VStack {
                            HStack() {
                                VStack(alignment: .leading, spacing: 5) {
                                    
                                    HStack {
                                        Text("RM 3,000")
                                            .font(.system(size: 23))
                                            .bold()
                                        
                                        Spacer()
                                        Text("pending".uppercased())
                                            .font(.caption)
                                            .bold()
                                            .padding(5)
                                            .background(Color.orange)
                                            .foregroundColor(.white)
                                            .cornerRadius(5)
                                    }
                                    Text("Transaction ID: HA18DDLXFS | 10 Nov 2019, 9:00 AM")
                                        .font(.caption)
                                    
                                    HStack {
                                        Image(systemName: "calendar")
                                        Text("10 Nov 2019 - 9 Dec 2019")
                                            .font(.footnote)
                                    }
                                }
                                Spacer()
                            }
                            .padding()
                            
                            HStack() {
                                
                                VStack(alignment: .leading) {
                                    HStack() {
                                        
                                        VStack(alignment: .leading) {
                                            Button(action: {}) {
                                                HStack() {
                                                    Spacer()
                                                    Image(systemName: "checkmark.circle")
                                                    Text("Mark as Paid")
                                                        .font(.footnote)
                                                        .bold()
                                                    Spacer()
                                                }
                                            }
                                        }
                                        Spacer()
                                        VStack(alignment: .leading) {
                                            Button(action: {}) {
                                                HStack() {
                                                    Spacer()
                                                    Image(systemName: "dollarsign.circle")
                                                    Text("Pay Now")
                                                        .font(.footnote)
                                                        .bold()
                                                    Spacer()
                                                }
                                            }
                                        }
                                        
                                    }
                                }
                                Spacer()
                            }
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 0)
                                    .stroke(Color("background"), lineWidth: 2)
                            )
                        }
                            .background(Color.white)
                            .cornerRadius(10)
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.bottom)
                    }
                }
            }
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct TransactionView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionView()
    }
}



