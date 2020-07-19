//
//  ServiceCategory.swift
//  Prory
//
//  Created by edwin on 20/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct ServiceCategory: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack() {
                Image(systemName: "flame")
                
                VStack(alignment: .leading) {
                    
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

struct ServiceCategory_Previews: PreviewProvider {
    static var previews: some View {
        ServiceCategory()
    }
}
