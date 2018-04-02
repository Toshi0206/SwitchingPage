//
//  HomeViewControllerTests.swift
//  SwitchingPage
//
//  Created by Toshiyuki Hirose on 2018/04/01.
//  Copyright © 2018年 Toshiyuki Hirose. All rights reserved.
//

import XCTest
@testable import SwitchingPage

class HomeViewControllerTests: XCTestCase, TransitionButtonDelegate {
    
    var buttomAction_wasCalled = false
    func pushNextView() {
        buttomAction_wasCalled = true
    }
    
    var controller = HomeViewController()
    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        controller = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        _ = controller.view
    }
    
    func test_遷移するボタンが表示されている() {
        XCTAssertNotNil(controller.view.findButtonWithText("遷移する"))
    }
    
    func test_アクションメソッドがコールされること() {
        controller.transitionButton.delegate = self
        controller.transitionButton.sendActions(for: .touchUpInside)
        XCTAssertTrue(buttomAction_wasCalled)
    }
}
