//
//  RequestView.swift
//  Prory
//
//  Created by edwin on 20/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct RequestView: View {
    var body: some View {
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack() {
                
                VStack() {
                    VStack(alignment: .leading) {
                        
                        HStack(spacing: 10){
                            Text("Request")
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
                        
                        ForEach(0..<5) { _ in
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
                                    Image(systemName: "chevron.right")
                                }
                                
                                
                                
                            }   .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                                .padding(.leading)
                                .padding(.trailing)
                                .padding(.top)
                        }
                    }
                    
                    Spacer(minLength: 0)
                    
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct RequestView_Previews: PreviewProvider {
    static var previews: some View {
        RequestView()
    }
}
