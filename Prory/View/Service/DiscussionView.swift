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
       var messages = Bundle.main.decode([Discussion].self, from: "discussion.json")
    
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
                        ForEach(messages) { message in
                            
                            HStack(alignment: .top) {
                                Image(message.imageName)
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                    .padding(.top)
                                    .padding(.leading)
                                
                                VStack(alignment: .leading, spacing: 10) {
                                    HStack() {
                                        
                                        VStack(alignment: .leading, spacing: 3) {
                                            
                                            Text(message.title)
                                                .font(.subheadline)
                                                .bold()
                                            Text("By \(message.name)")
                                                .font(.caption)
                                                .foregroundColor(Color("default"))
                                        }
                                        Spacer()
                                    }
                                    
                                    HStack() {
                                        Text(message.message)
                                            .font(.caption)
                                    }
                                    
                                    HStack() {
                                        Text(message.dateTime)
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
