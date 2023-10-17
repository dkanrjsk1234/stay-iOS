//
//  Weather View.swift
//  stay
//
//  Created by dgsw8th26 on 10/17/23.
//

import SwiftUI

struct Weather_View: View {
    var body: some View {
        ScrollView {
            VStack {
                searchView()
                Spacer().frame(height: 60)
                gpsweatherView()
                Spacer().frame(height: 60)
                todayweatherView()
                Spacer().frame(height: 18)
                Text("7일 간의 일기예보")
                    .padding(.trailing, 180)
                    .font(
                        Font.custom("Pretendard", size: 10)
                            .weight(.medium)
                    )
                    .foregroundColor(Color(red: 0.5, green: 0.5, blue: 0.5))
                weekweatherView()
            }
        }
    }
}

#Preview {
    Weather_View()
}
