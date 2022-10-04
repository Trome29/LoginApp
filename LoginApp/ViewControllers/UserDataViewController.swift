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
    
    @IBOutlet var image: UIImageView!
    
    private let welcomeVC = WelcomeViewController()
    private let person = Person.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(
            topColor: welcomeVC.topColor,
            bottomColor: welcomeVC.bottomColor
        )
        
        image.layer.cornerRadius = image.frame.height / 2
        
        // Хотел объеденить лейблы в 1 аутлет и через перебор аутлет коллекшн присваивать каждому текст, но подумал что это оверинжиниринг, поэтому вот так
        nameLabel.text = person.name
        surnameLabel.text = person.surname
        countryLabel.text = person.country
        cityLabel.text = person.city
    }
}
