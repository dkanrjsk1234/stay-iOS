//
//  TravelcourseView.swift
//  stay
//
//  Created by dgsw8th26 on 10/24/23.
//

import SwiftUI

struct TravelcourseView: View {
    var body: some View {
        ScrollView{
            VStack(alignment:.leading,spacing:15) {
                Spacer()
                ScrollView(.horizontal) {
                    CountrySecView()
                        .padding(.bottom, 40)
                        .padding(.leading, 17)
                        .padding(.top, 30)
                }
                Text("힐링을 위한 코스 추천")
                    .padding(.leading, 20)
                    .font(
                        Font.custom("Pretendard", size: 20)
                            .weight(.medium)
                    )
                ScrollView(.horizontal) {
                    HealingView()
                        .padding(.leading, 17)
                }
                Text("액티비티 한 스푼! 코스 추천")
                    .padding(.leading, 20)
                    .font(
                        Font.custom("Pretendard", size: 20)
                            .weight(.medium)
                    )
                ScrollView(.horizontal) {
                    ActivityView()
                        .padding(.leading, 17)
                }
                Text("가성비 코스 추천")
                    .padding(.leading, 20)
                    .font(
                        Font.custom("Pretendard", size: 20)
                            .weight(.medium)
                    )
                ScrollView(.horizontal) {
                    LowmoneyView()
                        .padding(.leading, 17)
                }
                Text("사진 찍기 좋은  코스 추천")
                    .padding(.leading, 20)
                    .font(
                        Font.custom("Pretendard", size: 20)
                            .weight(.medium)
                    )
                ScrollView(.horizontal) {
                    PhotozoneView()
                        .padding(.leading, 17)
                }
            }
        }
    }
}

#Preview {
    TravelcourseView()
}
