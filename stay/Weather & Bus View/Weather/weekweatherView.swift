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
        .frame(width: 302, height: 500)
        .background(Color(red: 0.85, green: 0.89, blue: 0.96))
        .cornerRadius(5)
        .overlay {
            ScrollView{
                VStack{
                    HStack{
                    }
                }
            }
        }
    }
}

#Preview {
    weekweatherView()
}
