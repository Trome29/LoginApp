//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Roman on 30.09.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {
    @IBOutlet var greetingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingsLabel.font = .systemFont(ofSize: 30)
        greetingsLabel.text = "Hello, "
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setGradientBackground()
        super.viewWillAppear(animated)
    }
    
    private func setGradientBackground() {
        let colorTop =  UIColor(red: 240.0/255.0, green: 80.0/255.0, blue: 90.0/255.0, alpha: 0.5).cgColor
        let colorBottom = UIColor(red: 80.0/255.0, green: 120.0/255.0, blue: 255.0/255.0, alpha: 0.5).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
}
