//
//  UIColor+ext.swift
//  UIKit_demo
//
//  Created by Darshan Uttam Mistry on 4/30/23.
//

import UIKit

extension UIColor{
    static func random()->UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomColor
    }
}
