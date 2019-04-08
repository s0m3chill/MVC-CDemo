//
//  AppCoordinatorTests.swift
//  SingleViewDemoTests
//
//  Created by Dariy Kordiyak on 3/29/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import XCTest
@testable import SingleViewDemo

class ContentCoordinatorTests: XCTestCase {
    
    // MARK: - Properties
    
    private var appCoordinator: AppCoordinatorInterface?
    
    // MARK: - Setup

    override func setUp() {
        super.setUp()
        
        appCoordinator = AppCoordinator(contentController: ContentViewController(),
                                            moduleFactory: ModuleFactory())
    }
    
    override func tearDown() {
        super.tearDown()
        
        appCoordinator = nil
    }
    
    // MARK: - Tests
    
    func testPushTransition() {
        guard let coordinator = appCoordinator else {
            XCTFail("App coordinator doesn't exist")
            return
        }
        
        coordinator.push(to: .first)
        coordinator.push(to: .second)
        XCTAssertTrue(coordinator.viewModules.count == 2, "Push failure")
    }
    
    func testPopTransition() {
        guard let coordinator = appCoordinator else {
            XCTFail("App coordinator doesn't exist")
            return
        }
        
        coordinator.push(to: .first)
        coordinator.push(to: .second)
        coordinator.push(to: .third)
        coordinator.pop(from: .third)
        XCTAssertTrue(coordinator.viewModules.count == 2, "Pop failure")
    }

}
