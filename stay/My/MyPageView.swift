//
//  MyPageView.swift
//  stay
//
//  Created by dgsw8th07 on 10/24/23.
//
import SwiftUI

struct MyPageView: View {
    @State var name: String = ""
    @State private var isLoggedIn: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .padding(.trailing, 15)
                        .foregroundColor(.gray)
                    Text(isLoggedIn ? "회원입니다" : "비회원입니다")
                        .font(
                            Font.custom("Inter", size: 25)
                                .weight(.medium)
                        )
                }
                .padding(.trailing, 135)
                .padding(.bottom, 35)
                
                NavigationLink(destination: LoginView(), isActive: $isLoggedIn) {
                    HStack {
                        Image(systemName: "rectangle.portrait.and.arrow.right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                        Text("로그인")
                            .font(Font.custom("Inter", size: 20)
                                .weight(.medium))
                            .foregroundColor(.black)
                    }
                    .padding(.trailing, 250)
                }
                .onTapGesture {
                    isLoggedIn = true
                }
                
            }
            .padding(.bottom,350)
        }
        
    }
}

struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView()
    }
}
