//
//  UserDataViewController.swift
//  LoginApp
//
//  Created by Roman on 04.10.2022.
//

import UIKit

class UserDataViewController: UIViewController {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    
    private let person = Person.getUserData()
    
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
        view.addVerticalGradientLayer(topColor: topColor, bottomColor: bottomColor)
        
        // Переделать
        nameLabel.text = person.name
        surnameLabel.text = person.surname
        countryLabel.text = person.country
        cityLabel.text = person.city
    }
}
