//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Roman on 30.09.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var greetingsLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        greetingsLabel.text = "Hello, \(userName ?? "")!"
    }
}
