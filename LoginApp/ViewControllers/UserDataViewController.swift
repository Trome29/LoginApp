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
    
    @IBOutlet var image: UIImageView! {
        didSet {
            image.layer.cornerRadius = image.frame.height / 2
        }
    }
    
    var user: User!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        countryLabel.text = user.person.country
        cityLabel.text = user.person.city
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userBioVC = segue.destination as? UserBioViewController else { return }
        userBioVC.user = user
    }
    

}
