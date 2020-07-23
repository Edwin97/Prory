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
            
            VStack(spacing: 0) {
                HStack {
                    Text("Services")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName: "plus")
                            .font(.system(size: 23))
                            .foregroundColor(.blue)
                    }
                }
                .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! )
                .padding()
                .background(Color.white)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    ForEach(0..<2) { _ in
                        VStack(spacing: 10) {
                            HStack() {
                                VStack(alignment: .center) {
                                    Text("11:30")
                                        .font(.footnote)
                                        .bold()
                                    Text("AM")
                                        .bold()
                                        .font(.system(size: 11))
                                    .foregroundColor(Color("default"))
                                }
                                .padding(8)
                                .padding(.top, 3)
                                .padding(.bottom, 3)
                                .background(Color("background"))
                                .cornerRadius(10)
                                
                                VStack(alignment: .leading) {
                                    Text("Belvedere-1402")
                                        .font(.caption)
                                    Text("Managed Properties")
                                        .bold()
                                        .font(.subheadline)
                                }
                                Spacer()
                            }
                            .padding(.leading)
                            .padding(.top)
                            
                            VStack(alignment: .leading, spacing: 4) {
                                HStack() {
                                    
                                    Image(systemName: "house")
                                        .resizable()
                                        .frame(width: 10, height: 10)
                                        .foregroundColor(.blue)
                                    Text("Eletrical")
                                        .font(.footnote)
                                        .foregroundColor(.blue)
                                    
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
                                .padding(.leading)
                                .padding(.trailing)
                            
                            HStack() {
                                
                                VStack(alignment: .leading, spacing: 5) {
                                    
                                    HStack {
                                        Image(systemName: "circle.fill")
                                            .resizable()
                                            .frame(width: 8, height: 8)
                                        Text("Requestor: Anuj Vernua (Tenant)")
                                         .font(.footnote)
                                    }
                                    
                                    HStack {
                                        Image(systemName: "circle.fill")
                                            .resizable()
                                            .frame(width: 8, height: 8)
                                        Text("Vendor: Rekesh (LG Service)")
                                            .font(.footnote)
                                    }
                                }
                                Spacer()
                            }
                            .padding(.leading)
                            
                            HStack() {
                                VStack(alignment: .leading) {
                                    HStack() {
                                        
                                        VStack(alignment: .leading) {
                                            Button(action: {}) {
                                                HStack() {
                                                    Spacer()
                                                    Image(systemName: "location")
                                                    Text("Direction")
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
                                                    Image(systemName: "phone")
                                                    Text("Call Now")
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
                        .padding(.top)
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}


struct ServiceView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceView()
    }
}
