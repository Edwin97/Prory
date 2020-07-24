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
                HStack {
                    Image("add-wall-painting")
                        .font(.footnote)
                    Text("Wall Painting")
                        .bold()
                        .font(.footnote)
                    
                    Spacer()
                }.padding()
                    .background(Color.white)
                    .cornerRadius(10)
                
                Spacer()
                
                HStack {
                    Image("add-plumber")
                        .font(.footnote)
                    Text("Plumber")
                        .bold()
                        .font(.footnote)
                    
                    Spacer()
                }.padding()
                    .background(Color.white)
                    .cornerRadius(10)
                
            }
            HStack() {
                HStack {
                    Image("add-interior")
                        .font(.footnote)
                    Text("Interior")
                        .bold()
                        .font(.footnote)
                    
                    Spacer()
                }.padding()
                    .background(Color.white)
                    .cornerRadius(10)
                
                Spacer()
                
                HStack {
                    Image("add-construction")
                        .font(.footnote)
                    Text("Construction")
                        .bold()
                        .font(.caption)
                    
                    Spacer()
                }.padding()
                    .background(Color.white)
                    .cornerRadius(10)
                
            }
            HStack() {
                HStack {
                    Image("add-bug")
                        .font(.footnote)
                    Text("Paste Control")
                        .bold()
                        .font(.footnote)
                    
                    Spacer()
                }.padding()
                    .background(Color.white)
                    .cornerRadius(10)
                
                Spacer()
                
                HStack {
                    Image("add-cleaning")
                        .font(.footnote)
                    Text("Cleaning")
                        .bold()
                        .font(.footnote)
                    
                    Spacer()
                }.padding()
                    .background(Color.white)
                    .cornerRadius(10)
                
            }
            HStack() {
                HStack {
                    Image("add-repair")
                        .font(.footnote)
                    Text("Repair")
                        .bold()
                        .font(.footnote)
                    
                    Spacer()
                }.padding()
                    .background(Color.white)
                    .cornerRadius(10)
                
                Spacer()
                
                HStack {
                    Image("add-more")
                        .font(.footnote)
                    Text("Other")
                        .bold()
                        .font(.footnote)
                    
                    Spacer()
                }.padding()
                    .background(Color.white)
                    .cornerRadius(10)
                
            }
        }
    }
}

struct ServiceCategory_Previews: PreviewProvider {
    static var previews: some View {
        ServiceCategory()
    }
}
