//
//  UserBioViewController.swift
//  LoginApp
//
//  Created by Roman on 04.10.2022.
//

import UIKit

class UserBioViewController: UIViewController {
    
    @IBOutlet var aboutContactInfoLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        
        aboutContactInfoLabel.textColor = .white
        aboutContactInfoLabel.text = user.person.userBio
        
        title = "Биография \(user.person.name)а"
    }
}
