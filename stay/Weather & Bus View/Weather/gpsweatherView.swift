//
//  gpsweatherView.swift
//  stay
//
//  Created by dgsw8th26 on 10/17/23.
//

import SwiftUI

struct gpsweatherView: View {
    var body: some View {
        Text("서울")
        .font(
        Font.custom("Pretendard", size: 25)
        .weight(.medium)
        )
        .foregroundColor(.black)
        Text("25°")
        .font(
        Font.custom("Pretendard", size: 55)
        .weight(.medium)
        )
        .foregroundColor(.black)
        Text("흐림")
        .font(
        Font.custom("Pretendard", size: 13)
        .weight(.medium)
        )
        .foregroundColor(.black)
        HStack {
            Text("최고:28°   최저:20°")
            .font(
            Font.custom("Pretendard", size: 13)
            .weight(.medium)
            )
            .foregroundColor(.black)
        }
    }
}

#Preview {
    gpsweatherView()
}
