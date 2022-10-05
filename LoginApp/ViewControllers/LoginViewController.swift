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
    
    private let user = User.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = user.login
        passwordTF.text = user.password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInButtonDidTapped() {
        guard userNameTF.text == user.login, passwordTF.text == user.password else {
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
        ? callAlert(title: "Oops!", message: "Your name is \(user.login) 😅")
        : callAlert(title: "Oops!", message: "Your password is \(user.password) 🤭")
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
