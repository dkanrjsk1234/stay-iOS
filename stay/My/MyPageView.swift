//
//  MyPageView.swift
//  stay
//
//  Created by dgsw8th07 on 10/24/23.
//

import SwiftUI

struct MyPageView: View {
    @State var name: String = ""
    var body: some View {
        VStack{
            //회원 비회원
            HStack{
                Image("person")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(.leading, 35)
                
                Text("비회원입니다")
                    .font(
                        Font.custom("Inter", size: 25)
                            .weight(.medium)
                    )
                    .padding(.leading, 17)
            }
            .padding(.trailing, 143)
            
            //로그인, 로그아웃
            //loginView()
            HStack{
                Image(systemName: "rectangle.portrait.and.arrow.forward")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35, height: 35)
                    .padding(.leading, 37)
    
                Text("로그인")
                    .font(
                        Font.custom("Inter", size: 20)
                            .weight(.medium)
                    )
                    .padding(.leading, 13)
            }
            .padding(.trailing, 235)
            .padding(.top, 35)
            
            Spacer()
        }
        .padding(.top, 70)
    }
}

#Preview {
    MyPageView()
}
