//
//  ContentView.swift
//  Prory
//
//  Created by edwin on 19/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var index = 1
    
    var body: some View {
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Text("Reports")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                .padding()
                .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)!)
                .background(Color.white)
                MenuBar(index: self.$index)
                Spacer(minLength: 0)
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

