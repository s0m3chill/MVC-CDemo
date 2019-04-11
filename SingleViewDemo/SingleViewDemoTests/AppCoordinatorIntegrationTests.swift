//
//  AppCoordinatorIntegrationTests.swift
//  SingleViewDemoTests
//
//  Created by Dariy Kordiyak on 4/11/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import XCTest
@testable import SingleViewDemo

class AppCoordinatorIntegrationTests: XCTestCase {

    // MARK: - Properties
    
    private var appCoordinator: TestAppCoordinator?
    
    // MARK: - Setup
    
    override func setUp() {
        super.setUp()
        
        appCoordinator = TestAppCoordinator(contentController: ContentViewController(),
                                            moduleFactory: ModuleFactory())
    }
    
    override func tearDown() {
        super.tearDown()
        
        appCoordinator = nil
    }
    
    // MARK: - Tests
    
    func testPushIsCalled() {
        guard let coordinator = appCoordinator else {
            XCTFail("Coordinator not set")
            return
        }
        
        let pushToModule: ModuleTypes = .first
        coordinator.push(to: pushToModule)
        
        switch coordinator.isCalled {
        case .push(pushToModule):
            break
        default:
            XCTFail("Push method not called")
        }
    }
    
    func testPopIsCalled() {
        guard let coordinator = appCoordinator else {
            XCTFail("Coordinator not set")
            return
        }
        
        let popFromModule: ModuleTypes = .second
        coordinator.pop(from: popFromModule)
        
        switch coordinator.isCalled {
        case .pop(popFromModule):
            break
        default:
            XCTFail("Pop method not called")
        }
    }


}
