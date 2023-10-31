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
                
                HStack {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14, height: 22.4)
                    
                        .padding(.leading, 42)
                    Spacer()
                }
                
                    
                
                Image("STAY")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 74, height: 34)
                
//                    .clipped()
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
                
                
                VStack(spacing: 16) {
                    Button {
                        
                    }label: {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 310, height: 60)
                            .foregroundColor(Color(red: 0.04, green: 0.25, blue: 0.61))
                            .overlay {
                                Text("로그인")
                                    .font(.custom("로그인", size: 20)
                                    )
                                    .tint(.white)
                            }
                    }
                }
                
                //signinView()
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
