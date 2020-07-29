//
//  Common.swift
//  SwiftExtensionDemo
//
//  Created by VIP on 2020/7/29.
//  Copyright © 2020 VIP. All rights reserved.
//

import Foundation
import UIKit

// MARK:- 颜色方法
/**
颜色
- parameter r: 红色
- parameter g: 绿色
- parameter b: 蓝色
- parameter a: 透明度
- Returns: 颜色
*/
func RGBA(_ r: CGFloat, _ g: CGFloat, _ b:CGFloat, _ a: CGFloat) -> UIColor {
    return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}
/**
 颜色
 - parameter r: 红色
 - parameter g: 绿色
 - parameter b: 蓝色
 - Returns: 颜色
 */
func RGB(_ r: CGFloat, _ g: CGFloat, _ b:CGFloat) -> UIColor {
    return RGBA(r, g, b, 1.0)
}
