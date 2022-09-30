//
//  ViewController.swift
//  LoginApp
//
//  Created by Roman on 30.09.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: Private properties
    private let login = "Tim Cook"
    private let password = "11160"
    
    //MARK: IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    //MARK: Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        userNameTF.endEditing(true)
        passwordTF.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        
        if userNameTF.text != login || passwordTF.text != password {
            let alert = UIAlertController(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                preferredStyle: .alert
            )
            let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                self.passwordTF.text = ""
            }
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        } else {
            welcomeVC.labelTextValue = "Hello, \(login)!"
        }
    }
    
    //MARK: IBActions
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotUserNameTapped() {
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your name is \(login) 😉",
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: .cancel))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func forgotPasswordTapped() {
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your password is \(password) 🤭",
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: .cancel))
        self.present(alert, animated: true, completion: nil)
    }
}

