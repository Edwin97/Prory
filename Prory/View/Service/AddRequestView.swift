//
//  RequestView.swift
//  Prory
//
//  Created by edwin on 19/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct AddRequestView: View {
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
                            Text("New Service Request")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Button(action: {
                                
                            }) {
                                
                                Image(systemName: "line.horizontal.3.decrease")
                                    .font(.system(size: 23))
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 10)
                    .padding()
                    .background(Color.blue)
                    
                    
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
                        }
                        
                        VStack(alignment: .leading) {
                            Text("Service Request Title")
                                .font(.subheadline)
                                .bold()
                            
                            TextField("Enter your name", text: $title)
                                
                                .frame(height: 40)
                                .padding([.leading, .trailing], 10)
                                .background(Color.white)
                                .cornerRadius(10)
                        }
                        
                        VStack(alignment: .leading) {
                            Text("Description")
                                .font(.subheadline)
                                .bold()
                            
                            TextField("Enter your name", text: $title)
                                
                                .frame(height: 40)
                                .padding([.leading, .trailing], 10)
                                .background(Color.white)
                                .cornerRadius(10)
                            
                        }
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
        AddRequestView()
    }
}
