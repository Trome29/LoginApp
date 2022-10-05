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
    
    private let userData = User.getUserLogin()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = "User"
        passwordTF.text = "Password"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = userData.person.name
                
            } else if let navigationControllerVC = viewController as? UINavigationController {
                guard let viewController = navigationControllerVC.topViewController else { return }
                
                if let userDataVC = viewController as? UserDataViewController {
                    userDataVC.userData = userData.person
                    userDataVC.title = userData.person.name
                }
            }
        }
    }
    
    @IBAction func logInButtonDidTapped() {
        guard userNameTF.text == userData.login, passwordTF.text == userData.password else {
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
        ? callAlert(title: "Oops!", message: "Your name is \(userData.login) 😅")
        : callAlert(title: "Oops!", message: "Your password is \(userData.password) 🤭")
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

extension UIView {
    func addVerticalGradientLayer() {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [
            UIColor(red: 210/255, green: 109/255, blue: 128/255, alpha: 1).cgColor,
            UIColor(red: 107/255, green: 148/255, blue: 210/255, alpha: 1).cgColor
        ]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
