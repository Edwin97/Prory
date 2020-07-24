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
                    Text("011C-120")
                        .font(.caption)
                    Text("Bandar Bukit Mahkota")
                        .bold()
                        .font(.subheadline)
                }
                Spacer()
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            
            HStack() {
                Image(systemName: "circle")
                VStack(alignment: .leading) {
                    Text("015A-890")
                        .font(.caption)
                    Text("Damai, Kota Kinabalu")
                        .bold()
                        .font(.subheadline)
                }
                Spacer()
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
        }
    }
}

struct RequestPropertySection_Previews: PreviewProvider {
    static var previews: some View {
        PropertyCell()
    }
}
