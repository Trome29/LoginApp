//
//  Extensions + UIView.swift
//  LoginApp
//
//  Created by Roman on 08.10.2022.
//

import UIKit

extension UIView {
    func addVerticalGradientLayer() {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [
            UIColor(red: 210/255, green: 109/255, blue: 128/255, alpha: 1).cgColor,
            UIColor(red: 107/255, green: 148/255, blue: 210/255, alpha: 1).cgColor
        ]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
