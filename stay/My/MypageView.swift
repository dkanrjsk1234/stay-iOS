import SwiftUI

struct MyPageView: View {
    @State var name: String = ""
    @State private var isLoggedIn: Bool = false
    var body: some View {
        NavigationView {
            VStack{
                //회원 비회원
                HStack{
                    Image("person")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .padding(.leading, 35)
                    
                    Text(isLoggedIn ? "회원입니다" : "비회원입니다")
                        .font(
                            Font.custom("Inter", size: 25)
                                .weight(.medium)
                        )
                        .padding(.leading, 17)
                }
                .padding(.trailing, 143)
                
                NavigationLink(
                    destination: LoginView(),
                    label: {
                        HStack {
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
                        .foregroundColor(.black)
                        .padding(.top, 35)
                        Spacer()
                    }
                )
                .padding(.bottom, 450)
                .navigationBarBackButtonHidden(true)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MyPageView()
}
