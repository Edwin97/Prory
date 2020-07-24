//
//  TransactionView.swift
//  Prory
//
//  Created by edwin on 19/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct TransactionView: View {
    @State private var showInvoice = false
    @ObservedObject private var viewModel = TransactionViewModel()
    
    var body: some View {
        
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 15) {
                HStack(spacing: 10){
                    Text("Transactions")
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
                            }.padding([.top, .leading, .trailing, .bottom])
                        }
                        .background(  Color.white)
                        .cornerRadius(10)
                        .padding(.leading)
                        .padding(.trailing)
                        
                        Button(action: {
                            self.showInvoice.toggle()
                        }) {
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
                        }.sheet(isPresented: $showInvoice) {
                            InvoiceView()
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.yellow)
                        .cornerRadius(10)
                        .padding(.leading)
                        .padding(.trailing)
                        
                        ForEach(viewModel.transactions) { transaction in
                            VStack(spacing: 0) {
                                HStack() {
                                    VStack(alignment: .leading, spacing: 5) {
                                        
                                        HStack {
                                            Text(transaction.rent)
                                                .font(.system(size: 23))
                                                .bold()
                                            
                                            Spacer()
                                            Text(transaction.status.uppercased())
                                                .font(.caption)
                                                .bold()
                                                .padding(5)
                                                .background((transaction.status == "pending") ? Color.orange : Color.green)
                                                .foregroundColor(.white)
                                                .cornerRadius(5)
                                        }
                                        Text(transaction.description)
                                            .font(.caption)
                                        
                                        HStack {
                                            Image(systemName: "calendar")
                                            Text(transaction.date)
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
                                                        Image(systemName: "eye")
                                                        Text("View Details")
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
                        }
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



