//
//  WelcomeView.swift
//  Prory
//
//  Created by edwin on 21/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Color("strongBlue")
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: 10) {
                Spacer()
                
                Spacer()
                Image("icon")
                
                Spacer()
                Spacer()
                Text("Property Management Simplified")
                    .bold()
                    .multilineTextAlignment(.center)
                    .font(.system(size: 32))
                    .foregroundColor(.white)
                
                Text("Get in touch with your network, representative get tailored proposals and last news about targeted players")
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .foregroundColor(.white)
                
                Spacer()
                
                Button(action: {}) {
                    HStack() {
                        Spacer()
                        Text("Have account? Log In")
                            .font(.body)
                            .bold()
                        
                        Spacer()
                    }
                }
                .padding()
                .foregroundColor(.blue)
                .background(Color.white)
                .cornerRadius(10)
                
                Button(action: {}) {
                    HStack() {
                        Spacer()
                        Text("First Conncetion? Sign Up")
                            .font(.body)
                            .bold()
                        
                        Spacer()
                    }
                }
                .padding()
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
