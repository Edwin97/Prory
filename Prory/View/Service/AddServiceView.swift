//
//  RequestView.swift
//  Prory
//
//  Created by edwin on 19/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct AddServiceView: View {
    @State private var title: String = ""
    @State private var description: String = ""
    
    var body: some View {
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack() {
                
                VStack() {
                    VStack(alignment: .leading) {
                        
                        HStack(spacing: 10){
                            Image(systemName: "xmark")
                                .padding(.leading)
                            
                            Spacer()
                            
                            Text("Add Service")
                                .font(.headline)
                                .padding(.trailing)
                            
                            Spacer()
                        }
                    }
                    .padding(.top, 5)
                    .padding()
                    .background(Color.white)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        VStack {
                            VStack(alignment: .leading) {
                                Text("Choose Property")
                                    .font(.subheadline)
                                    .bold()
                                PropertyCell()
                            }
                            
                            VStack(alignment: .leading) {
                                Text("Choose Categories")
                                    .font(.subheadline)
                                    .bold()
                                ServiceCategory()
                            }.padding(.top)
                            
                            VStack(alignment: .leading) {
                                Text("Service Request Title")
                                    .font(.subheadline)
                                    .bold()
                                
                                TextField("", text: $title)
                                    .frame(height: 50)
                                    .padding([.leading, .trailing], 10)
                                    .background(Color.white)
                                    .cornerRadius(10)
                            }.padding(.top)
                        
                            VStack(alignment: .leading) {
                            Text("Description")
                                .font(.subheadline)
                                .bold()
                            
                            TextField("", text: $title)
                                .frame(height: 120)
                                .padding([.leading, .trailing], 10)
                                .background(Color.white)
                                .cornerRadius(10)
                            
                        }.padding(.top)
                            
                            Button(action: {}) {
                                HStack() {
                                    Spacer()
                                    Text("Create new service request".uppercased())
                                        .font(.subheadline)
                                        .bold()
                                        .foregroundColor(.white)
                                    Spacer()
                                }
                            }
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.yellow)
                            .cornerRadius(10)
                            .padding(.top)
                            
                        }.padding()
                    }
                    
                    Spacer(minLength: 0)
                    
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct AddRequestView_Previews: PreviewProvider {
    static var previews: some View {
        AddServiceView()
    }
}
