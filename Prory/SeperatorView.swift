//
//  SeperatorView.swift
//  Prory
//
//  Created by edwin on 24/07/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import SwiftUI

struct SeperatorView: View {
    var body: some View {
        // Add seperator
        HStack() {
            Spacer()
            Text("")
                .frame(height: 2)
            Spacer()
        }.background(Color("background"))
            .padding(.bottom)
            .padding(.top)
    }
}

struct SeperatorView_Previews: PreviewProvider {
    static var previews: some View {
        SeperatorView()
    }
}
