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
    
    var userData: UserData?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        
        guard let user = userData else { return }
        nameLabel.text = user.name
        surnameLabel.text = user.surname
        countryLabel.text = user.country
        cityLabel.text = user.city
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        image.layer.cornerRadius = image.frame.size.height / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userBioVC = segue.destination as? UserBioViewController else { return }
        userBioVC.userBio = userData?.userBio
        userBioVC.title = "Биография \(userData?.name ?? "")а"
    }
    

}
