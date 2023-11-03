//
//  weekweatherView.swift
//  stay
//
//  Created by dgsw8th26 on 10/17/23.
//

import SwiftUI

struct weekweatherView: View {
    var body: some View {
        Rectangle()
        .foregroundColor(.clear)
        .frame(width: 302, height: 330)
        .background(Color(red: 0.85, green: 0.89, blue: 0.96))
        .cornerRadius(5)
        .overlay {
            ScrollView{
                VStack(spacing:10){
                    Spacer()
                    ForEach (1..<8) { number in
                        weekweatherone()
                        Divider()
                    }
                }
            }
        }
    }
}

#Preview {
    weekweatherView()
}
