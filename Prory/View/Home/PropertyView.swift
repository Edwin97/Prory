//
//  PropertyView.swift
//  Prory
//
//  Created by edwin on 20/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct PropertyView: View {
    @ObservedObject var viewModel = PropertyViewModel()
    
    var body: some View {
        
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 15) {
                
                VStack {
                    HStack {
                        
                        Image(systemName: "xmark")
                            .padding(.leading)
                        
                        Spacer()
                        
                        Text("My Property")
                            .font(.headline)
                          .padding(.trailing)
                        
                        Spacer()
                    }
                    .padding(.top, 5)
                    .padding()
                    .background(Color.white)
                }
                
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(viewModel.properties) { property in
                        VStack(spacing: 6) {
                            HStack() {
                                VStack(alignment: .leading, spacing: 3) {
                                    
                                    Text(property.unit)
                                        .font(.caption)
                                    Text(property.name)
                                        .bold()
                                        .font(.subheadline)
                                }
                                Spacer()
                                Text(property.location)
                                    .font(.footnote)
                            }.padding()
                            
                            HStack() {
                                
                                VStack(alignment: .leading) {
                                    HStack() {
                                        
                                        VStack(alignment: .leading) {
                                            Text(property.currentRent)
                                                .font(.subheadline)
                                                .bold()
                                            Text("Current Rent")
                                                .font(.footnote)
                                        }.padding()
                                        Spacer()
                                        VStack(alignment: .leading) {
                                            Text(property.totalRent)
                                                .font(.subheadline)
                                                .bold()
                                            Text("Total Rent Revenue")
                                                .font(.footnote)
                                        }.padding()
                                        
                                    }
                                }
                                Spacer()
                            }  .overlay(
                                RoundedRectangle(cornerRadius: 10)
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
        }.onAppear {
             self.viewModel.fetchData()
         }
    }
 
}

struct PropertyView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyView()
    }
}
