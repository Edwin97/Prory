//
//  SummaryView.swift
//  Prory
//
//  Created by edwin on 19/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI


struct SummaryView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "house")
                .resizable()
                .frame(width: 20, height: 20)
                .padding(15)
                .background(Color.black.opacity(0.06))
                .cornerRadius(15)
            
            Text("03")
                .fontWeight(.bold)
                .font(.title)
            Text("Managed Properties")
                .font(.subheadline)
        }
        .padding(.leading, 10)
        .padding(.vertical)
        .frame(width: (UIScreen.main.bounds.width / 2) - 25)
        .background(Color.white)
        .cornerRadius(15)
    }
}



struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView()
    }
}
