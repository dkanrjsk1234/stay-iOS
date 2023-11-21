//
//  signinView.swift
//  stay
//
//  Created by dgsw8th07 on 10/24/23.
//

import SwiftUI
import Alamofire

struct signinView: View {
    
    @State private var name: String = ""
    @State private var password: String = ""
    @State private var checkPassword: String = ""
    @State private var email: String = ""
    @State private var confirmPassword: String = ""
    @State private var isPasswordMatch: Bool = true
    @State private var isUsernameAvailable: Bool = false
    @State private var isPasswordMismatchAlertPresented = false
    
    enum RegistrationStatus {
        case success, failure
        
        enum IdentifiableStatus: Identifiable {
            case success, failure
            
            var id: UUID {
                UUID()
            }
        }
    }
    
    @State private var registrationStatus: RegistrationStatus.IdentifiableStatus? = nil
    
    
    
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
                // 비밀번호 1차 입력
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
                            .foregroundColor(isPasswordMatch ? .black : .red)
                    }
                    .padding(.bottom, 13)
                
                // 비밀번호 확인
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
                            .onChange(of: checkPassword) { newValue in
                                isPasswordMatch = password == newValue
                            }
                            .foregroundColor(isPasswordMatch ? .black : .red)
                    }
                    .padding(.bottom, 13)
                //이메일
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 1)
                    .frame(width: 310, height: 55)
                    .overlay {
                        TextField("user-name@example.com", text: $email)
                            .font(
                                Font.custom("Pretendard", size: 20)
                                    .weight(.medium)
                            )
                            .padding(.horizontal, 14)
                            .keyboardType(.emailAddress)
                    }
                    .padding(.bottom, 13)
                
                // 회원가입
                VStack(spacing: 16) {
                    Button(action: {
                        // 비밀번호 일치 여부 확인
                        guard isPasswordMatch else {
                            print("비밀번호가 일치하지 않습니다.")
                            return
                        }
                        
                        // 아이디 중복 여부 확인
                        guard isUsernameAvailable else {
                            print("아이디가 이미 사용 중입니다.")
                            return
                        }
                        
                        // 서버에 회원가입 요청 보내기
                        registerUser()
                    }) {
                        HStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 310, height: 60)
                                .foregroundColor(Color(red: 0.04, green: 0.25, blue: 0.61))
                                .overlay {
                                    Text("회원가입")
                                        .font(.custom("Pretendard", size: 20))
                                        .tint(.white)
                                }
                        }
                        .foregroundColor(.white)
                    }
                }
                .padding(.top, 38)
            }
            .padding(.bottom, 320)
            .navigationBarBackButtonHidden(true)
            .alert(isPresented: $isPasswordMismatchAlertPresented) {
                Alert(title: Text("경고"), message: Text("비밀번호가 일치하지 않습니다."), dismissButton: .default(Text("확인")))
            }
        }
        .alert(item: $registrationStatus) { status in
            switch status {
            case .success:
                return Alert(title: Text("회원가입 성공"))
            case .failure:
                return Alert(title: Text("회원가입 실패"), message: Text("서버 오류"))
            }
        }
        .padding(.top, 38)
    }
}


private func checkUsernameAvailability() {
    // 서버 통신 로직을 추가
    // 간단히 아이디가 "available"일 경우에만 사용 가능하다고 가정
    // 서버 API와 통신하여 결과를 확인
    
    // 아이디 중복 확인 예시
    let mockServerResponse: Bool = true // 서버 응답 값을 사용
}

private func registerUser() {
    let mockServerResponse: Bool = true // 모의 서버 응답 값을 사용
    if mockServerResponse {
        print("회원가입 성공")
    } else {
        print("회원가입 실패: 서버 오류")
    }
}

struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        signinView()
    }
}

#Preview {
    signinView()
}
