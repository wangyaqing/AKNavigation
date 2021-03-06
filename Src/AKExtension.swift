//
//  AKExtension.swift
//  AKNavigation
//
//  Created by arkin on 27/03/2017.
//  Copyright © 2017 arkin. All rights reserved.
//

import UIKit

extension UIImage {
    
    class public func image(from color:UIColor) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(CGSize(width:1, height:1), false, 0)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(CGRect(x:0, y:0, width:1, height:1))
        let desImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return desImage!
    }
}

extension UIColor {
    
    class public func hex(from hex: UInt) -> UIColor {
        let a = CGFloat((hex >> 24) & 0xFF)
        let r = CGFloat((hex >> 16) & 0xFF)
        let g = CGFloat((hex >> 8) & 0xFF)
        let b = CGFloat(hex & 0xFF)
        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a / 255.0)
    }
}
