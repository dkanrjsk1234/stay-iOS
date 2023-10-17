//
//  todayweatherView.swift
//  stay
//
//  Created by dgsw8th26 on 10/17/23.
//

import SwiftUI

struct todayweatherView: View {
    var body: some View {
        Rectangle()
        .foregroundColor(.clear)
        .frame(width: 302, height: 109)
        .background(Color(red: 0.85, green: 0.89, blue: 0.96))
        .cornerRadius(5)
        .overlay {
            ScrollView(.horizontal){
                HStack {
                    VStack{
                        Text("지금")
                        .font(
                        Font.custom("Pretendard", size: 15)
                        .weight(.bold)
                        )
                        Image(systemName: "cloud.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 24)
                            .foregroundColor(.white)
                        Text("25")
                        .font(
                        Font.custom("Pretendard", size: 15)
                        .weight(.medium)
                        )
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    todayweatherView()
}
