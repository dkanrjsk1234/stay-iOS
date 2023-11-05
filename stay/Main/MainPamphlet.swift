//
//  MainPamphlet.swift
//  stay
//
//  Created by dgsw8th26 on 11/5/23.
//

import SwiftUI

struct MainPamphlet: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 305, height: 270)
            .background(Color(red: 0.85, green: 0.85, blue: 0.85))
            .cornerRadius(10)
    }
}

#Preview {
    MainPamphlet()
}
