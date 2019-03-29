//
//  ContentCoordinatorTests.swift
//  SingleViewDemoTests
//
//  Created by Dariy Kordiyak on 3/29/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import XCTest

class ContentCoordinatorTests: XCTestCase {
    
    // MARK: - Properties
    
    private var contentCoordinator: ContentCoordinator!
    
    // MARK: - Setup

    override func setUp() {
        contentCoordinator = AppCoordinator(contentController: ContentViewController(),
                                            moduleFactory: ModuleFactory())
        contentCoordinator.push(to: .first)
    }
    
    // MARK: - Tests
    
    func testInitialModulesCount() {
        XCTAssertTrue(contentCoordinator.viewModules.count == 1, "Wrong initial modules count")
    }
    
    func testPush() {
        contentCoordinator.push(to: .second)
        XCTAssertTrue(contentCoordinator.viewModules.count == 2, "Push failure")
    }
    
    func testPop() {
        contentCoordinator.push(to: .second)
        contentCoordinator.push(to: .third)
        contentCoordinator.pop(from: ThirdCoordinator())
        XCTAssertTrue(contentCoordinator.viewModules.count == 2, "Pop failure")
    }

}
