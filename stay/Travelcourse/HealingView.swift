//
//  HealingView.swift
//  stay
//
//  Created by dgsw8th26 on 10/31/23.
//

import SwiftUI

struct HealingView: View {
    var body: some View {
        HStack(spacing:15) {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 120, height: 120)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                .cornerRadius(10)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 120, height: 120)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                .cornerRadius(10)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 120, height: 120)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                .cornerRadius(10)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 120, height: 120)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                .cornerRadius(10)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 120, height: 120)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                .cornerRadius(10)
        }
    }
}

#Preview {
    HealingView()
}
