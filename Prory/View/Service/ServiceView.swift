//
//  RequestView.swift
//  Prory
//
//  Created by edwin on 20/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct ServiceView: View {
    var body: some View {
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack() {
                
                VStack() {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Services")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Spacer()
                        }
                    }
                    .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! )
                    .padding()
                    .background(Color.blue)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        ForEach(0..<2) { _ in
                            VStack(spacing: 10) {
                                HStack() {
                                    VStack(alignment: .leading) {
                                        
                                        Text("Belvedere-1402")
                                            .font(.caption)
                                        Text("Managed Properties")
                                            .bold()
                                            .font(.subheadline)
                                    }
                                    Spacer()
                                }
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    HStack() {
                                        
                                        Image(systemName: "house")
                                            .resizable()
                                            .frame(width: 10, height: 10)
                                        Text("Eletrical")
                                            .font(.footnote)
                                        
                                        Spacer()
                                    }
                                    
                                    Text("Fridge is not working")
                                        .bold()
                                    Text("The fidge is leaking water and is not able to cool properly for last 15 days")
                                        .font(.footnote)
                                    
                                    Spacer()
                                    
                                }
                                .padding()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("background"), lineWidth: 2)
                                )
                                
                                HStack() {
                                    
                                    VStack(alignment: .leading) {
                                        
                                        Text("Requestor: Anuj Vernua (Tenant)")
                                            .font(.footnote)
                                        Text("Vendor: Rekesh (LG Service)")
                                            .font(.footnote)
                                    }
                                    Spacer()
                        
                                }
                                
                                
                                
                            }   .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                                .padding(.leading)
                                .padding(.trailing)
                                .padding(.top)
                        }
                    }
                    
                    VStack {
                        Button(action: {}) {
                            HStack() {
                                Spacer()
                                Text("Create Service Request".uppercased())
                                    .font(.subheadline)
                                    .bold()
                                
                                Image(systemName: "arrow.right")
                                
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
                    .padding()
                    .background(Color.white)
                
                    Spacer(minLength: 0)
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct RequestView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceView()
    }
}
