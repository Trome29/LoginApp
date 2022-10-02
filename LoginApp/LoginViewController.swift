//
//  ViewController.swift
//  LoginApp
//
//  Created by Roman on 30.09.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    //MARK: Private properties
    private let login = "Tim Cook"
    private let password = "11160"
    
    //MARK: Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        
        if userNameTF.text != login || passwordTF.text != password {
            callAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
        } else {
            welcomeVC.labelTextValue = "Hello, \(login)!"
        }
    }
    
    
    private func callAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: .cancel))
        self.present(alert, animated: true, completion: nil)
    }
    
    //MARK: IBActions
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotUserNameTapped() {
        callAlert(title: "Oops!", message: "Your name is \(login) 😉")
    }
    
    @IBAction func forgotPasswordTapped() {
        callAlert(title: "Oops!", message: "Your password is \(password) 🤭")
    }
}

