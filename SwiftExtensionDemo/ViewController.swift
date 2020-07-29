//
//  ViewController.swift
//  SwiftExtensionDemo
//
//  Created by VIP on 2020/7/29.
//  Copyright © 2020 VIP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo01()
        demo02()
    }

}

extension ViewController {
    func demo01() {
        let imgView = UIImageView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        imgView.image = UIImage.cq.color(RGB(51, 51, 51))
        view.addSubview(imgView)
    }
     
    func demo02() {
        print("123456das789".cq.numberCount)
    }
}

