//
//  searchView.swift
//  stay
//
//  Created by dgsw8th26 on 10/17/23.
//

import SwiftUI

struct searchView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 302, height: 50)
            .background(.white)
            .cornerRadius(5)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.04, green: 0.25, blue: 0.61), lineWidth: 1)
            )
    }
}

#Preview {
    searchView()
}
