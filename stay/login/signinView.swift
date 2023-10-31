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
    @State private var isUsernameAvailable: Bool = false
    var body: some View {
        VStack{
            HStack(spacing: 20) {
                //아이디 입력
                RoundedRectangle(cornerRadius: 10)
                                    .strokeBorder(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 1)
                                    .frame(width: 210, height: 55)
                                    .overlay {
                                        TextField("아이디", text: $name)
                                            .font(Font.custom("Pretendard", size: 20).weight(.medium))
                                            .padding(.horizontal, 14)
                                    }
                //아이디 중복 확인
                RoundedRectangle(cornerRadius: 10)
                                    .strokeBorder(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 1)
                                    .frame(width: 80, height: 55)
                                    .overlay {
                                        Button(action: {
                                            checkUsernameAvailability()
                                        }) {
                                            Text("중복 확인")
                                        }
                                    }
                            }
                            .padding(.bottom, 13)
                            .padding(.top, 150)
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
                    Button(action: {
                    }){
                        HStack {
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
                        .foregroundColor(.white)
                    }}

                .padding(.top, 38)
            }
            .padding(.bottom, 320)
            .navigationBarBackButtonHidden(true)
        }
    }
private func checkUsernameAvailability() {
        // 여서버 통신 로직을 추가
        // 간단히 아이디가 "available"일 경우에만 사용 가능하다고 가정
        // 서버 API와 통신하여 결과를 확인

        // 아이디 중복 확인 예시
    let mockServerResponse: Bool = true // 서버 응답 값을 사용해

            if mockServerResponse {
                isUsernameAvailable = true
                print("아이디 사용 가능")
            } else {
                isUsernameAvailable = false
                print("아이디가 이미 사용 중입니다.")
            }
        }

    struct SigninView_Previews: PreviewProvider {
        static var previews: some View {
            signinView()
        }
    }
}
#Preview {
    signinView()
}
