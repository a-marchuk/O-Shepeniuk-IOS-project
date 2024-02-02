import Foundation
import Combine

class LoginViewModel: ObservableObject {
    @Published var login: String = ""
    @Published var password: String = ""
    @Published var showError: Bool = false
    @Published var errorMessage: String = ""
    @Published var isLoginValid: Bool = true // Додали властивість для валідності логіну
    @Published var isPasswordValid: Bool = true
    @Published var isLoginButtonTapped: Bool = false
    
    private var cancellables: Set<AnyCancellable> = []
    
    func loginButtonTapped() {
        // Логіка обробки натискання на кнопку входу
        if isValidLogin() && isValidPassword() {
            print("Успішний вхід")
        } else {
            isLoginValid = isValidLogin() // Оновлюємо властивість isLoginValid
            
            showError = true
            isLoginButtonTapped = true
        }
    }
    
    func isValidLogin() -> Bool {
        let loginRegex = "^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-.]+$"
        let loginPredicate = NSPredicate(format: "SELF MATCHES %@", loginRegex)
        if !loginPredicate.evaluate(with: login) {
            errorMessage = "Введіть правильний логін (наприклад, example@example.com)"
            return false
        }
        return true
    }
    
    func isValidPassword() -> Bool {
        if password.isEmpty {
            errorMessage = "Введіть пароль"
            return false
        }else if password.count < 8 {
            errorMessage = "Пароль повинен містити принаймні 8 символів"
            return false
        }
        return true
        }
    }
