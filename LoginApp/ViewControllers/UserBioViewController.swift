//
//  UserBioViewController.swift
//  LoginApp
//
//  Created by Roman on 04.10.2022.
//

import UIKit

class UserBioViewController: UIViewController {
    
    @IBOutlet var aboutContactInfoLabel: UILabel!
    
    var userBio: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        
        aboutContactInfoLabel.textColor = .white
        aboutContactInfoLabel.text = userBio
    }
}
