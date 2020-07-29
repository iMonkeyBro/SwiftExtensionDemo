//
//  UIImageExtension.swift
//  SwiftExtensionDemo
//
//  Created by VIP on 2020/7/29.
//  Copyright © 2020 VIP. All rights reserved.
//

import UIKit

extension UIImage: CQCompatible {}

extension CQ where Base == UIImage {
    /**
     根据颜色生成UIImage
     
     传入颜色，生成一张纯色UIImage
     
         let image = UIImage.color(RGB(1,1,1))
     
     - Note: 利用UIGraphicsBeginImageContextWithOptions绘制UIImage
     - Parameters:
       - color: 颜色
     - Returns: 生成的UIImage
     */
    static func color(_ color: UIColor) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, UIScreen.main.scale)
        let ctx = UIGraphicsGetCurrentContext()
        ctx?.setFillColor(color.cgColor)
        ctx?.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}
