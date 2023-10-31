//
//  signinView.swift
//  stay
//
//  Created by dgsw8th07 on 10/24/23.
//

import SwiftUI

struct signinView: View {
    @State var name: String = ""
    @State var password: String = ""
    @State var checkPassword: String = ""
    @State var email: String = ""
    var body: some View {
        VStack{
            //화살표
            HomeView()
            Image(systemName: "chevron.left")
                .frame(width: 14, height: 22.4)
                .padding(.leading, 42)
                .padding(.trailing, 337)
                .padding(.top, 78)
            //로고
            Image("STAY")
                .resizable()
                .frame(width: 74, height: 34)
                .padding(.bottom, 30)
            
            HStack(spacing: 20) {
                //아이디 입력
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 1)
                    .frame(width: 210, height: 55)
                    .overlay {
                        
                        TextField("아이디", text: $name)
                            .font(
                                Font.custom("Pretendard", size: 20)
                                    .weight(.medium)
                            )
                            .padding(.horizontal, 14)
                    }
                //아이디 중복 확인
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 1)
                    .frame(width: 80, height: 55)
                    .overlay {
                        Button(action: {
                            print("중복 확인")
                        }, label: {
                            Text("중복 확인")
                        })
                    }
            }
            .padding(.bottom, 13)
            VStack{
                //비밀번호 1차 입력
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 1)
                    .frame(width: 310, height: 55)
                    .overlay {
                        
                        SecureField("비밀번호 입력", text: $password)
                            .font(
                                Font.custom("Pretendard", size: 20)
                                    .weight(.medium)
                            )
                            .padding(.horizontal, 14)
                        
                    }
                    .padding(.bottom, 13)
                //비밀번호 확인
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 1)
                    .frame(width: 310, height: 55)
                    .overlay {
                        
                        SecureField("비밀번호 확인", text: $checkPassword)
                            .font(
                                Font.custom("Pretendard", size: 20)
                                    .weight(.medium)
                            )
                            .padding(.horizontal, 14)
                        
                    }
                    .padding(.bottom, 13)
                //이메일 입력
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 1)
                    .frame(width: 310, height: 55)
                    .overlay {
                        
                        TextField("이메일", text: $email)
                            .font(
                                Font.custom("Pretendard", size: 20)
                                    .weight(.medium)
                            )
                            .padding(.horizontal, 14)
                        
                    }
                    .padding(.bottom, 13)
                
                //회원가입
                VStack(spacing: 16) {
                    Button {
                        
                    }label: {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 310, height: 60)
                            .foregroundColor(Color(red: 0.04, green: 0.25, blue: 0.61))
                            .overlay {
                                Text("회원가입")
                                    .font(.custom("회원가입", size: 20)
                                    )
                                    .tint(.white)
                            }
                    }
                }

                .padding(.top, 38)
            }
            .padding(.bottom, 320)
        }
    }
}




#Preview {
    signinView()
}