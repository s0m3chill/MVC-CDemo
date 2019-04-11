//
//  ModuleCoordinatorIntegrationTests.swift
//  SingleViewDemoTests
//
//  Created by Dariy Kordiyak on 4/11/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import XCTest
@testable import SingleViewDemo

class ModuleCoordinatorIntegrationTests: XCTestCase {
    
    // MARK: - Properties
    
    private var testModuleCoordinator: TestModuleCoordinator?
    private var appCoordinator: AppCoordinatorInterface?
    
    // MARK: - Setup

    override func setUp() {
        super.setUp()
        
        testModuleCoordinator = TestModuleCoordinator()
        appCoordinator = TestAppCoordinator(contentController: ContentViewController(),
                                            moduleFactory: ModuleFactory())
    }

    override func tearDown() {
        super.tearDown()
        
        testModuleCoordinator = nil
        appCoordinator = nil
    }
    
    // MARK: - Tests
    
    func testCoordinatorStart() {
        guard let moduleCoordinator = testModuleCoordinator else {
            XCTFail("Module coordinator not set")
            return
        }
        
        let controller = FirstController(coordinator: FirstCoordinator())
        moduleCoordinator.start(from: appCoordinator!,
                                     controller: controller)
        
        switch moduleCoordinator.isCalled {
        case .start:
            break
        default:
            XCTFail("Start method not called")
        }
    }
    
    func testCoordinatorRemove() {
        guard let moduleCoordinator = testModuleCoordinator else {
            XCTFail("Module coordinator not set")
            return
        }

        let controller = SecondController(coordinator: SecondCoordinator())
        moduleCoordinator.remove()
        
        switch moduleCoordinator.isCalled {
        case .remove:
            break
        default:
            XCTFail("Remove method not called")
        }
    }

}
