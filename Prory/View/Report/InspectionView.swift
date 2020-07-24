//
//  InspectionView.swift
//  Prory
//
//  Created by edwin on 23/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct InspectionView: View {
    var services = Bundle.main.decode([Service].self, from: "service.json")
    
    var body: some View {
        
        VStack(spacing: 0) {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    ForEach(services) { service in
                        VStack(spacing: 0) {
                            HStack() {
                                VStack(alignment: .center) {
                                    Text("NOV")
                                        .bold()
                                        .font(.system(size: 11))
                                        .foregroundColor(Color("default"))
                                    Text(service.date)
                                        .font(.footnote)
                                        .bold()
                                }
                                .padding(8)
                                .padding(.top, 3)
                                .padding(.bottom, 3)
                                .background(Color("background"))
                                .cornerRadius(10)
                                
                                VStack(alignment: .leading) {
                                    Text(service.unit)
                                        .font(.caption)
                                    Text(service.name)
                                        .bold()
                                        .font(.subheadline)
                                }
                                Spacer()
                            }
                            .padding(.leading)
                            .padding(.top)
                            .padding(.bottom)
                            
                            HStack() {
                                
                                VStack(alignment: .leading, spacing: 5) {
                                    
                                    HStack {
                                        Text("Overview")
                                            .font(.footnote)
                                            .bold()
                                    }
                                    
                                    HStack {
                                        Text(service.description)
                                            .font(.footnote)
                                    }
                                    HStack {
                                        Text("By \(service.by)")
                                            .font(.footnote)
                                            .foregroundColor(Color("default"))
                                    }
                                }
                                Spacer()
                            }
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.bottom)
                        }
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding(.leading)
                        .padding(.trailing)
                        .padding(.bottom)
                    }
                }
            }
        }
        
    }
}


struct InspectionView_Previews: PreviewProvider {
    static var previews: some View {
        InspectionView()
    }
}
