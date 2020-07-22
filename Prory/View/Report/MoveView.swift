//
//  MoveView.swift
//  Prory
//
//  Created by edwin on 20/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct MoveView: View {
    var body: some View {
        VStack() {
            HStack() {
                VStack(alignment: .leading) {
                    
                    Text("Belvedere-1402")
                        .font(.caption)
                    Text("Managed Properties")
                        .bold()
                        .font(.subheadline)
                }
                Spacer()
            }
            
            HStack() {
                Image(systemName: "house")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(.leading)
                    .padding(.top)
                    .padding(.bottom)
                VStack(alignment: .leading) {
                    
                    Text("Move-in")
                        .font(.footnote)
                        .foregroundColor(Color("default"))
                    Text("10 Jan 2019")
                        .bold()
                        .font(.footnote)
                }
                Spacer()
            }  .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("background"), lineWidth: 2)
            )
            
            HStack() {
                Image("edwin-profile")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(10)
                VStack(alignment: .leading) {
                    
                    Text("Edwin Chan")
                        .font(.subheadline)
                        .bold()
                    Text("Product Manager, SpashLearn")
                        .font(.caption)
                        .foregroundColor(Color("default"))
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(Color("default"))
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .padding(.leading)
        .padding(.trailing)
    }
}


struct MoveView_Previews: PreviewProvider {
    static var previews: some View {
        MoveView()
    }
}
