//
//  PropertyDetailView.swift
//  Prory
//
//  Created by edwin on 20/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct PropertyDetailView: View {
    var body: some View {
        
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                VStack(spacing: 10) {
                    HStack() {
                        VStack(alignment: .leading, spacing: 10) {
                            
                            VStack(alignment: .leading, spacing: 2) {
                                Text("B-1402")
                                    .font(.caption)
                                    .foregroundColor(.white)
                                
                                Text("Lodha Aurum Grande")
                                    .font(.subheadline)
                                    .bold()
                                    .foregroundColor(.white)
                                Text("Versova, Mumbai")
                                    .font(.caption)
                                    .foregroundColor(.white)
                            }
                            
                            HStack {
                                VStack(alignment: .leading, spacing: 2) {
                                    Text("Ramesh Morya")
                                        .font(.subheadline)
                                        .bold()
                                        .foregroundColor(.white)
                                
                                    Text("Property Manager")
                                        .font(.caption)
                                        .foregroundColor(.white)
                                }
                                
                                Spacer()
                                
                                Image(systemName: "message.circle.fill")
                                    .foregroundColor(.white)
                                
                                Image(systemName: "phone.circle.fill")
                                    .foregroundColor(.white)
                                
                                
                            }
                            Text("Leased from July 2019 - 2019")
                                .font(.subheadline)
                                .foregroundColor(.white)
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
                                                .foregroundColor(.white)
                                            Spacer()
                                            Image(systemName: "info.circle")
                                                .foregroundColor(.white)
                                        }
                                    }
                                }
                                
                            }
                        }
                        Spacer()
                    }
                    .padding()
                }
                .background(Color.blue)
                    //                .background(Color.white)
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
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(0..<4) { _ in
                        VStack(spacing: 10) {
                            HStack() {
                                VStack(alignment: .leading, spacing: 5) {
                                    
                                    HStack {
                                        Text("RM 3,000")
                                            .font(.subheadline)
                                            .bold()
                                        
                                        Spacer()
                                        Text("pending".uppercased())
                                            .font(.footnote)
                                            .foregroundColor(.orange)
                                            .bold()
                                    }
                                    Text("Transaction ID: HA18DDLXFS | 10 Nov 2019, 9:00 AM")
                                        .font(.caption)
                                    
                                    HStack {
                                        Image(systemName: "calendar")
                                        Text("10 Nov 2019 - 9 Dec 2019")
                                            .font(.subheadline)
                                    }
                                }
                                Spacer()
                            }.padding()
                            
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
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("background"), lineWidth: 2)
                            )
                        }
                            //                    .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.top)
                        
                        
                    }
                }
            }
        }
    }
}

struct PropertyDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyView()
    }
}


