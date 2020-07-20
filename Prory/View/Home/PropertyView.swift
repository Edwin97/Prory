//
//  PropertyView.swift
//  Prory
//
//  Created by edwin on 20/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct PropertyView: View {
    var body: some View {
        
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
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
                        
                        HStack() {
                            
                            VStack(alignment: .leading) {
                                HStack() {
                                    
                                    VStack(alignment: .leading) {
                                        Text("RM 16,81,000")
                                            .font(.subheadline)
                                            .bold()
                                        Text("Total Rent Revenue")
                                            .font(.footnote)
                                    }.padding()
                                    Spacer()
                                    VStack(alignment: .leading) {
                                        Text("RM 16,81,000")
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
                    }   .padding()
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

struct PropertyView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyView()
    }
}
