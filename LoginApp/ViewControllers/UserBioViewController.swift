//
//  UserBioViewController.swift
//  LoginApp
//
//  Created by Roman on 04.10.2022.
//

import UIKit

class UserBioViewController: UIViewController {
    
    @IBOutlet var aboutContactInfoLabel: UILabel!
    
    private let welcomeVC = WelcomeViewController()
    private let info = Person.getUserBio()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(
            topColor: welcomeVC.topColor,
            bottomColor: welcomeVC.bottomColor
        )
        
        aboutContactInfoLabel.textColor = .white
        aboutContactInfoLabel.text = info
    }
}
