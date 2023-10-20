//
//  weekweatherone.swift
//  stay
//
//  Created by dgsw8th26 on 10/20/23.
//

import SwiftUI

struct weekweatherone: View {
    var body: some View {
        HStack(spacing:25) {
            Text("오늘")
                .font(
                    Font.custom("Pretendard", size: 18)
                        .weight(.medium)
                )
            Image(systemName: "cloud.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 24)
                .foregroundColor(.white)
            Text("25°  /  25°")
                .font(
                    Font.custom("Pretendard", size: 18)
                        .weight(.medium)
                )
        }
    }
}

#Preview {
    weekweatherone()
}
