//
//  loginView.swift
//  stay
//
//  Created by dgsw8th07 on 10/24/23.
//

import SwiftUI

struct loginView: View {
    @State var name: String = ""
    @State var password: String = ""
    var body: some View {
        NavigationView{
            VStack {
                
                Image(systemName: "chevron.left")
                    .frame(width: 14, height: 22.4)
                    .padding(.leading, 42)
                    .padding(.trailing, 337)
                    .padding(.top, 35)
                    .padding(.bottom, 45.6)
                
                Image("STAY")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 74, height: 34)
                    .clipped()
                    .padding(.bottom, 91)
                
                
                ZStack {
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 310, height: 55)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 1)
                        )
                    
                    TextField("아이디 입력", text: $name)
                        .font(
                            Font.custom("Pretendard", size: 20)
                                .weight(.medium)
                        )
                        .frame(width: 265, height: 10)
                }
                
                .padding(.bottom, 16)
                
                
                ZStack {
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 310, height: 55)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 1)
                        )
                    
                    SecureField("비밀번호 입력", text: $password)
                        .font(
                            Font.custom("Pretendard", size: 20)
                                .weight(.medium)
                        )
                        .frame(width: 265, height: 10)
                    
                }
                .padding(.bottom, 45)
                
                ZStack {Button{
                    
                    print("로그인")
                }label: {
                    Text("로그인")
                        .fontWeight(.bold)
                        .frame(width: 310, height: 60)
                        .background(Color(red: 0.04, green: 0.25, blue: 0.61))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                }
//                NavigationLink(destination: singin()) {
//                                    Text("회원가입")
//                                }
//                                .frame(width: 350, height: 20)
//                                .buttonStyle(PlainButtonStyle())
//                                .foregroundColor(Color.white)
//                                .padding()
//                                .background(Color("#243062"))
//                                .cornerRadius(10)
                
                
                
                
                
                
                
                ZStack{Button{
                    print("회원가입")
                }label: {
                    Text("회원가입")
                }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    loginView()
}
