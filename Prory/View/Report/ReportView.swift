//
//  ReportView.swift
//  Prory
//
//  Created by edwin on 19/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct ReportView: View {
    
    @State var index = 1
    
    var body: some View {
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 15) {
                
                VStack {
                    HStack {
                        Text("Reports")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
                    }
                    .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)!)
                    .padding()
                    .background(Color.white)
                    
                    MenuBar(index: self.$index)
                    
                }
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 15) {
                        ForEach(0..<2) { _ in
                            MoveView()
                        }
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct MenuBar : View {
    
    @Binding var index : Int
    
    var body: some View{
        
        VStack(alignment: .leading, content: {
            
            HStack {
                Button(action: {
                    self.index = 1
                }) {
                    VStack(spacing: 15){
                        Text("Inspections")
                            .foregroundColor(self.index == 1 ? .blue : .black)
                            .font(.subheadline)
                            .bold()
                        Capsule()
                            .fill(self.index == 1 ? Color.blue : Color.clear)
                            .frame(height: 3)
                    }
                }
                
                Button(action: {
                    self.index = 2
                }) {
                    VStack(spacing: 15){
                        Text("Move-in/Move-out")
                            .foregroundColor(self.index == 2 ? .blue : Color.black)
                            .font(.subheadline)
                            .bold()
                        Capsule()
                            .fill(self.index == 2 ? Color.blue : Color.clear)
                            .frame(height: 3)
                    }
                }
                
            }
        })
            .background(Color.white)
    }
}

struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        ReportView()
    }
}
