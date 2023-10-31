//
//  ContentView.swift
//  stay
//
//  Created by dgsw8th26 on 10/17/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈")
                }
                TravelcourseView()
                .tabItem {
                    Image(systemName: "flag.fill")
                    Text("여행코스")
                }
                Weather_View()
                .tabItem {
                    Image(systemName: "sun.max.fill")
                    Text("날씨")
                }
                HomeView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("마이페이지")
                }
            }
            .accentColor(Color(red: 0.04, green: 0.25, blue: 0.61))
            .navigationBarItems(leading:
            HStack {
                Image("STAY")
                    .resizable()
                    .scaledToFit()
                    .padding(.leading, 20)
                Spacer()
            }
            )
        }
    }
}

#Preview {
    ContentView()
}
