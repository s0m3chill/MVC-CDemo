//
//  AppCoordinatorTests.swift
//  SingleViewDemoTests
//
//  Created by Dariy Kordiyak on 3/29/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import XCTest
@testable import SingleViewDemo

class AppCoordinatorTests: XCTestCase {
    
    // MARK: - Properties
    
    private var appCoordinator: AppCoordinator?
    
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
    
    func testPushTransitionToFirstModuleController() {
        guard let coordinator = appCoordinator else {
            XCTFail("App coordinator doesn't exist")
            return
        }
        
        let firstModule: ModuleTypes = .first
        
        coordinator.push(to: firstModule)
        XCTAssertTrue(coordinator.viewModules.count == 1, "Push failure")
    }
    
    func testPopTransitionFromLastCoordinatorToSecondCoordinator() {
        guard let coordinator = appCoordinator else {
            XCTFail("App coordinator doesn't exist")
            return
        }
        
        let popModule: ModuleTypes = .third
        
        coordinator.push(to: .first)
        coordinator.push(to: .second)
        coordinator.push(to: .third)
        coordinator.pop(from: popModule)
        XCTAssertTrue(coordinator.viewModules.count == 2, "Pop failure")
    }
    
    func testPopFromNotExistingModule() {
        guard let coordinator = appCoordinator else {
            XCTFail("App coordinator doesn't exist")
            return
        }
        
        coordinator.push(to: .first)
        coordinator.pop(from: .third)
        XCTAssertTrue(coordinator.viewModules.count == 1, "Pop failure")
    }

}
