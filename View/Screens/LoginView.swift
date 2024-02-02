// LoginView.swift
import SwiftUI

struct LoginView: View {
    @ObservedObject private var viewModel = LoginViewModel()

    var body: some View {
        NavigationView{
            ZStack() {
                backgroundLogin()
                VStack(alignment: .center) {
                    Title(size: 24, title: StringConstants.Login.title).padding(.top, 20)
                    SubTitle(size: 14, title: StringConstants.Login.subtitle).multilineTextAlignment(.center).padding(.top, 2)
                    Spacer()
                    
                    HStack(alignment: .center) {
                        SocialLoginButton(title: "Google", image: "GooglePNG", action: { print("Google login") })
                        Spacer()
                        SocialLoginButton(title: "Facebook", image: "FacebookPNG", action: { print("Facebook login") })
                    }
                    .padding(.horizontal, 20)
                    
                    LoginTextField(text: $viewModel.login, placeholder: StringConstants.Login.loginFieldText, viewModel: viewModel)
                        .padding(.top, 37)
                        .padding(.horizontal, 20)
                    PasswordTextField(password: $viewModel.password, placeholder: StringConstants.Login.passwordFieldText, viewModel: viewModel)
                        .padding(.top, 18)
                        .padding(.horizontal, 20)
                    
                    LoginButton(action: {
                        viewModel.loginButtonTapped()
                    })
                    .padding(.top, 32)
                    
                    TextButton(title: "Forgot Password", action: { print("Forgot password") }).padding(.top, 19)
                    Spacer()
                    TextButton(title: StringConstants.Login.joinText, action: { print("Forgot password") }).padding(.bottom, 20)
                }
            }
            .alert(isPresented: $viewModel.showError) {
                Alert(title: Text("Помилка"), message: Text(viewModel.errorMessage), dismissButton: .default(Text("OK")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
