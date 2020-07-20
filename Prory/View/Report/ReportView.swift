//
//  ReportView.swift
//  Prory
//
//  Created by edwin on 19/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct ReportView: View {
    
    
    var body: some View {
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)
        
        VStack() {
            VStack() {
                VStack(alignment: .leading) {
                    
                    HStack(spacing: 10){
                        Text("Reports")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Spacer()
                    }
                }
                .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)!)
                .padding()
                .background(Color.blue)

                
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(0..<2) { _ in
                        MoveView()
                    }
                }
                
                Spacer(minLength: 0)
                
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
    }
}

struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        ReportView()
    }
}
