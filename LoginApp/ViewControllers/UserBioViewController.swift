//
//  UserBioViewController.swift
//  LoginApp
//
//  Created by Roman on 04.10.2022.
//

import UIKit

class UserBioViewController: UIViewController {

    @IBOutlet var aboutContactInfoLabel: UILabel!
    
    let info = Person.getUserBio()
    
    private let topColor =  UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    private let bottomColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutContactInfoLabel.textColor = .white
        view.addVerticalGradientLayer(topColor: topColor, bottomColor: bottomColor)
        aboutContactInfoLabel.text = info
    }
}
