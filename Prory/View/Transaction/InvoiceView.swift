//
//  InvoiceView.swift
//  Prory
//
//  Created by edwin on 22/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct InvoiceView: View {
    var body: some View {
        
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 15) {
                
                HStack(spacing: 10){
                    Text("Invoice")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)!)
                .padding()
                .background(Color.white)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 15) {
                        VStack(spacing: 0) {
                            
                            HStack() {
                                
                                VStack(alignment: .leading) {
                                    
                                    HStack {
                                        
                                        HStack {
                                            Image("icon")
                                                .resizable()
                                                .frame(width: 20, height: 20)
                                                .foregroundColor(Color("strongBlue"))
                                            Text("Propry".uppercased())
                                                .font(.headline)
                                                .bold()
                                                .foregroundColor(Color("strongBlue"))
                                        }
                                        
                                        Spacer()
                                        
                                        VStack(alignment: .trailing) {
                                            
                                            HStack {
                                                Image(systemName: "circle.fill")
                                                    .resizable()
                                                    .frame(width: 8, height: 8)
                                                    .foregroundColor(.green)
                                                
                                                Text("PAID")
                                                    .font(.caption)
                                                    .bold()
                                                    .foregroundColor(.green)
                                            }
                                            Text("Invoice #3290")
                                                .font(.caption)
                                        }
                                    }
                                    
                                    VStack(alignment: .leading, spacing: 5) {
                                        
                                        VStack(alignment: .leading, spacing: 5) {
                                            Text("Jason Fook")
                                                .font(.subheadline)
                                                .bold()
                                            
                                            Text("RM 1,900")
                                                .font(.headline)
                                                .bold()
                                        }
                                        
                                        VStack(alignment: .leading, spacing: 3) {
                                            Text("Service fee invoice for the period of")
                                                .font(.caption)
                                                .foregroundColor(Color("default"))
                                            Text("May 2019 to June 2019")
                                                .font(.footnote)
                                        }
                                    }
                                    
                                    // Add seperator
                                    HStack() {
                                        Spacer()
                                        Text("")
                                            .frame(height: 2)
                                        Spacer()
                                    }.background(Color("background"))
                                        .padding(.bottom)
                                        .padding(.top)
                                    
                                    HStack {
                                        VStack(alignment: .leading, spacing: 5) {
                                            Text("Bill To,")
                                                .font(.caption)
                                                .foregroundColor(Color("default"))
                                            
                                            Text("Eric Chong")
                                                .font(.subheadline)
                                                .bold()
                                            Text("Jalan Eco Botanic 1/2, Eco Botanic @ Nusa Jaya, 79500, Johor")
                                            .font(.caption)
                                            .foregroundColor(Color("default"))
                                            
                                        }
                                        
                                        Spacer()
                                        VStack(alignment: .trailing, spacing: 10) {
                                            VStack(alignment: .trailing, spacing: 2) {
                                                Text("Invoice Date")
                                                    .font(.caption)
                                                    .bold()
                                                Text("10 Nov 2019, 9:00 AM")
                                                    .font(.caption)
                                            }
                                            
                                            VStack(alignment: .trailing, spacing: 2) {
                                                Text("Raised By")
                                                    .font(.caption)
                                                    .bold()
                                                Text("Imran Nazir")
                                                    .font(.caption)
                                            }
                                        }
                                    }.padding(.bottom)
                     
                                    HStack() {
                                        
                                        VStack(alignment: .leading, spacing: 10) {
                                            HStack() {
                                                Text("Payment Detail")
                                                    .font(.subheadline)
                                                    .bold()
                                                Spacer()
                                            }
                                            
                                            VStack(spacing: 0) {
                                                HStack() {
                                                    Text("Description")
                                                        .font(.footnote)
                                                        .bold()
                                                    Spacer()
                                                    Text("Amount")
                                                        .font(.footnote)
                                                        .bold()
                                                }.padding(5)
                                                .background(Color("background"))
                                                
                                                HStack() {
                                                    Text("Labour: 5 hours at Rmm 100/hr")
                                                        .font(.caption)
                                                        .multilineTextAlignment(.trailing)
                                                    Spacer()
                                                    Text("500")
                                                        .font(.caption)
                                                        .multilineTextAlignment(.trailing)
                                                }.padding(5)
                                                HStack() {
                                                    Text("Repair dining table")
                                                        .font(.caption)
                                                        .multilineTextAlignment(.trailing)
                                                    Spacer()
                                                    Text("1,200")
                                                        .font(.caption)
                                                        .multilineTextAlignment(.trailing)
                                                }.padding(5)
                                                
                                                HStack() {
                                                    Text("Service  Free")
                                                        .font(.caption)
                                                        .multilineTextAlignment(.trailing)
                                                    Spacer()
                                                    Text("200")
                                                        .font(.caption)
                                                        .multilineTextAlignment(.trailing)
                                                }.padding(5)
                                            }
                                            
                                            // Add seperator
                                            HStack() {
                                                Spacer()
                                                Text("")
                                                    .frame(height: 2)
                                                Spacer()
                                            }.background(Color("background"))
                                            
                                            HStack() {
                                                
                                                Text("Total")
                                                    .font(.headline)
                                                    .multilineTextAlignment(.trailing)
                                                Spacer()
                                                Text("RM 1,900")
                                                    .font(.headline)
                                                    .multilineTextAlignment(.trailing)
                                            }.padding(5)
                                        }
                                        
                                    }
                                }
                                
                                
                                Spacer()
                            }.padding([.top, .leading, .trailing, .bottom])
                        }
                        .background(  Color.white)
                        .cornerRadius(10)
                        .padding(.leading)
                        .padding(.trailing)
                        
                        Button(action: {}) {
                            HStack() {
                                Spacer()
                                Text("Download Invoice")
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
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct InvoiceView_Previews: PreviewProvider {
    static var previews: some View {
        InvoiceView()
    }
}



