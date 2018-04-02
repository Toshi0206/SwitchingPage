//
//  UIView+Extensions.swift
//  SwitchingPageTests
//
//  Created by Toshiyuki Hirose on 2018/04/03.
//  Copyright © 2018年 Toshiyuki Hirose. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func findButtonWithText(_ text: String) -> UIButton? {
        for view in self.subviews {
            if let btn = view as? UIButton,
                btn.titleLabel?.text == text {
                return btn
            } else {
                if let btn = view.findButtonWithText(text) {
                    return btn
                }
            }
        }
        return nil
    }
}
