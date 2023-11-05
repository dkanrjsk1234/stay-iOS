//
//  HomeView.swift
//  stay
//
//  Created by dgsw8th26 on 10/17/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Spacer().frame(height: 30)
                searchView()
                MainPamphlet()
                Text("힐링을 위한 코스 추천")
                    .padding(.trailing, 135)
                    .font(
                        Font.custom("Pretendard", size: 20)
                            .weight(.medium)
                    )
                ScrollView(.horizontal) {
                    HealingView()
                        .padding(.leading, 42)
                }
                Text("액티비티 한 스푼! 코스 추천")
                    .padding(.trailing, 90)
                    .font(
                        Font.custom("Pretendard", size: 20)
                            .weight(.medium)
                    )
                ScrollView(.horizontal) {
                    HealingView()
                        .padding(.leading, 42)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
