//
//  ContentView.swift
//  Prory
//
//  Created by edwin on 19/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   @State var showingDetail = false

       var body: some View {
           Button(action: {
               self.showingDetail.toggle()
           }) {
               Text("Show Detail")
           }.sheet(isPresented: $showingDetail) {
               DiscussionView()
           }
       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

