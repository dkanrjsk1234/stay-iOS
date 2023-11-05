//
//  loginView.swift
//  stay
//
//  Created by dgsw8th07 on 10/24/23.
//

import SwiftUI

struct LoginView: View {
    @State var name: String = ""
    @State var password: String = ""
    @State private var isSigninViewActive: Bool = false
    @State private var showAlert: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
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
                .padding(.top, 30)
                
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
                    Button(action: {
                        if isValidUser() {
                            isSigninViewActive = false
                        } else {
                            showAlert = true
                        }
                    }) {Text("로그인")
                            .font(.custom("로그인", size: 20))
                            .tint(.white)
                            .frame(width: 310, height: 60)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color(red: 0.04, green: 0.25, blue: 0.61))
                            )
                    }
                    .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text("로그인 실패"),
                            message: Text("아이디 또는 비밀번호가 일치하지 않습니다."),
                            dismissButton: .default(Text("확인"))
                        )
                    }
                    NavigationLink(destination: signinView(), isActive: $isSigninViewActive) {
                        Text("회원가입")
                            .font(.custom("회원가입", size: 15))
                            .tint(.gray)
                    }
                    .navigationBarBackButtonHidden(true)
                }
                .navigationBarBackButtonHidden(true)
                
                
                Spacer()
            }
        }
    }
    private func isValidUser() -> Bool {
        // 실제로는 서버와 통신하여 인증
        return name == "admin" && password == "password"
    }
    
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
