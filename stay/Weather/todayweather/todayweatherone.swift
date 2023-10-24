//
//  todayweatherone.swift
//  stay
//
//  Created by dgsw8th26 on 10/20/23.
//

import SwiftUI

struct todayweatherone: View {
    var body: some View {
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
            Text("25°")
            .font(
            Font.custom("Pretendard", size: 15)
            .weight(.medium)
            )
        }
    }
}

#Preview {
    todayweatherone()
}
