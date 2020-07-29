//
//  StringExtension.swift
//  SwiftExtensionDemo
//
//  Created by VIP on 2020/7/29.
//  Copyright © 2020 VIP. All rights reserved.
//

import Foundation

extension String: CQCompatible {}

extension CQ where Base == String {
    /// 字符串里数字的个数
    var numberCount: Int {
        base.filter { (c) in
            ("0"..."9").contains(c)
        }.count
    }
}
