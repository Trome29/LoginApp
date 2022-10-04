//
//  ViewController.swift
//  LoginApp
//
//  Created by Roman on 30.09.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let login = "User"
    private let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = login
        passwordTF.text = password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
//        welcomeVC.login = login
//    }
    
    @IBAction func logInButtonDidTapped() {
        guard userNameTF.text == login, passwordTF.text == password else {
            callAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textfield: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? callAlert(title: "Oops!", message: "Your name is \(login) 😅")
        : callAlert(title: "Oops!", message: "Your password is \(password) 🤭")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func callAlert(title: String, message: String, textfield: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textfield?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
