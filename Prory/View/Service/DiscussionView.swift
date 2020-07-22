//
//  DiscussionView.swift
//  Prory
//
//  Created by edwin on 22/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct DiscussionView: View {
    @State private var message: String = ""
    
    var body: some View {
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 15) {
                
                VStack {
                    HStack {
                        Text("Discussion")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
                    }
                    .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)!)
                    .padding()
                    .background(Color.white)
                }
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 15) {
                        ForEach(0..<1) { _ in
                            
                            HStack(alignment: .top) {
                                Image("profile")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                    .padding(.top)
                                    .padding(.leading)
                                
                                VStack(alignment: .leading, spacing: 10) {
                                    HStack() {
                                        
                                        VStack(alignment: .leading, spacing: 3) {
                                            
                                            Text("Request Reopened")
                                                .font(.subheadline)
                                                .bold()
                                            Text("By Edwin Chan")
                                                .font(.caption)
                                                .foregroundColor(Color("default"))
                                        }
                                        Spacer()
                                    }
                                    
                                    HStack() {
                                        Text("Remarks: Wall has slight cracks through which water has started seeping in during the rainy season. The mould has also started to grow which is unbearable")
                                            .font(.caption)
                                    }
                                    
                                    HStack() {
                                        Text("9th Nov 2019, 4: 30 PM")
                                            .font(.caption)
                                            .foregroundColor(Color("default"))
                                    }
                                }
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                                .padding(.trailing)
                            }
                        }
                    }
                }
                
                
                HStack(spacing: 20) {
                    TextField("Write something", text: $message)
                        .font(.body)
                    Spacer()
                    Image(systemName: "arrowtriangle.right.circle.fill")
                        .padding(.trailing)
                }
                .padding()
                .edgesIgnoringSafeArea(.bottom)
                    
                .background(Color.white)
                .cornerRadius(10)
                
                
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct DiscussionView_Previews: PreviewProvider {
    static var previews: some View {
        DiscussionView()
    }
}
