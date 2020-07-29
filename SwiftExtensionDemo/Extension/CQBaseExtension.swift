//
//  CQBaseExtension.swift
//  SwiftExtensionDemo
//
//  Created by VIP on 2020/7/29.
//  Copyright © 2020 VIP. All rights reserved.
//

import Foundation

// 定义前缀类型
struct CQ<Base> {
    public var base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

// 利用协议扩展前缀属性
protocol CQCompatible {}

extension CQCompatible {
    // 这里不要只读，方便扩展mutating函数
    // 让cq扩展实例属性方法
    public var cq: CQ<Self> {
        set {}
        get {
            CQ(self)
        }
    }
    
    // 让cq能扩展类属性类方法
    public static var cq: CQ<Self>.Type {
        set {}
        get {
            CQ<Self>.self
        }
    }
}
