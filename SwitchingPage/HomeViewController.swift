//
//  ViewController.swift
//  SwitchingPage
//
//  Created by Toshiyuki Hirose on 2018/04/01.
//  Copyright © 2018年 Toshiyuki Hirose. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, TransitionButtonDelegate {
    
    @IBOutlet weak var transitionButton: TransitionButton!
    
    func pushNextView() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.transitionButton.delegate = self
    }
}

