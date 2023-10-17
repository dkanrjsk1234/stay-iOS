//
//  Weather & Bus View.swift
//  stay
//
//  Created by dgsw8th26 on 10/17/23.
//

import SwiftUI

struct Weather___Bus_View: View {
    var body: some View {
        TabView {
            Weather_View()
                .tabItem {
                    Text("날씨")
                }
            Bus_View()
                .tabItem {
                    Text("대중교통")
                }
        }
        .frame(height:600)
    }
}

#Preview {
    Weather___Bus_View()
}
