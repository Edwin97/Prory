//
//  RequestPropertySection.swift
//  Prory
//
//  Created by edwin on 20/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct PropertyCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack() {
                Image(systemName: "circle")
                
                VStack(alignment: .leading) {
                    
                    Text("Belvedere-1402")
                        .font(.caption)
                    Text("Managed Properties")
                        .bold()
                        .font(.subheadline)
                }
                Spacer()
                
            }   .padding()
                .background(Color.white)
                .cornerRadius(10)
                .padding(.leading)
                .padding(.trailing)
                .padding(.top)
        }
    }
}

struct RequestPropertySection_Previews: PreviewProvider {
    static var previews: some View {
        PropertyCell()
    }
}
