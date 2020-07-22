//
//  SummaryView.swift
//  Prory
//
//  Created by edwin on 19/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI


struct SummaryView: View {
    var item: KeySummary
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(item.imageName)
                .resizable()
                .frame(width: 25, height: 25)
                .padding()
                .background(Color.black.opacity(0.06))
                .cornerRadius(15)
            Text(String(item.total))
                .fontWeight(.bold)
                .font(.title)
            HStack {
            Text(item.title)
                .font(.subheadline)
                Spacer(minLength: 0)
            }
        }
        .padding()
        .frame(width: (UIScreen.main.bounds.width / 2) - 25)
        .background(Color.white)
        .cornerRadius(15)
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView(item: KeySummary.example)
    }
}
