//
//  CustomNavigationControllerForTests.swift
//  SwitchingPage
//
//  Created by Toshiyuki Hirose on 2018/04/01.
//  Copyright © 2018年 Toshiyuki Hirose. All rights reserved.
//

import UIKit

class CustomNavigationControllerForTests: UINavigationController {
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        super.pushViewController(viewController, animated: false)
    }
}
