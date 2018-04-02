//
//  TransitionButton.swift
//  SwitchingPage
//
//  Created by Toshiyuki Hirose on 2018/04/03.
//  Copyright © 2018年 Toshiyuki Hirose. All rights reserved.
//

import UIKit

protocol TransitionButtonDelegate {
    func pushNextView()
}

class TransitionButton: UIButton {
    
    var delegate: TransitionButtonDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.setup()
    }
    
    func setup() {
        self.addTarget(self, action: #selector(self.tapButton), for: .touchUpInside)
    }
    
    func tapButton(_ sender: UIButton) {
        self.delegate?.pushNextView()
    }
}
