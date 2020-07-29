//
//  UIColorExtension.swift
//  SwiftExtensionDemo
//
//  Created by VIP on 2020/7/29.
//  Copyright © 2020 VIP. All rights reserved.
//

import UIKit

extension UIColor: CQCompatible{}

extension CQ where Base == UIColor {
    static func hexColor(_ hexColor: Int64) -> UIColor {
        let red = ((CGFloat)((hexColor & 0xFF0000) >> 16))/255.0;
        let green = ((CGFloat)((hexColor & 0xFF00) >> 8))/255.0;
        let blue = ((CGFloat)(hexColor & 0xFF))/255.0;
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}

