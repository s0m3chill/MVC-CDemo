//
//  ModuleCoordinatorTests.swift
//  SingleViewDemoTests
//
//  Created by Dariy Kordiyak on 3/29/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import XCTest
@testable import SingleViewDemo

class ModuleCoordinatorTests: XCTestCase {
    
    // MARK: - Properties
    
    private var appCoordinator: TestAppCoordinator?
    private var contentView: UIView?
    
    // MARK: - Setup

    override func setUp() {
        super.setUp()
        
        contentView = UIView(frame: .zero)
        appCoordinator = TestAppCoordinator(contentController: ContentViewController(),
                                            moduleFactory: ModuleFactory())
    }
    
    override func tearDown() {
        super.tearDown()
        
        contentView = nil
        appCoordinator = nil
    }
    
    // MARK: - Tests
    
    func testFirstCoordinatorStart() {
        guard let appCoord = appCoordinator else {
            XCTFail("Coordinator doesn't exist")
            return
        }
        
        let firstCoordinator = FirstCoordinator()
        let controller = FirstController(coordinator: firstCoordinator)
        controller.contentView = contentView
        
        firstCoordinator.start(from: appCoord, controller: controller)
        XCTAssertNotNil(firstCoordinator.rootController, "Root controller not set")
    }
    
    func testFirstCoordinatorRemove() {
        guard let appCoord = appCoordinator else {
            XCTFail("Coordinator doesn't exist")
            return
        }
        
        let firstCoordinator = FirstCoordinator()
        let controller = FirstController(coordinator: firstCoordinator)
        controller.contentView = contentView
        
        firstCoordinator.start(from: appCoord, controller: controller)
        firstCoordinator.remove()
        XCTAssertNil(firstCoordinator.rootController?.contentView?.superview, "Coordinator content view not removed")
    }
    
    func testSecondCoordinatorStart() {
        guard let appCoord = appCoordinator else {
            XCTFail("Coordinator doesn't exist")
            return
        }
        
        let secondCoordinator = SecondCoordinator()
        let controller = SecondController(coordinator: secondCoordinator)
        controller.contentView = contentView
        
        secondCoordinator.start(from: appCoord, controller: controller)
        XCTAssertNotNil(secondCoordinator.rootController, "Root controller not set")
    }
    
    func testSecondCoordinatorRemove() {
        guard let appCoord = appCoordinator else {
            XCTFail("Coordinator doesn't exist")
            return
        }
        
        let secondCoordinator = SecondCoordinator()
        let controller = SecondController(coordinator: secondCoordinator)
        controller.contentView = contentView
        
        secondCoordinator.start(from: appCoord, controller: controller)
        secondCoordinator.remove()
        XCTAssertNil(secondCoordinator.rootController?.contentView?.superview, "Coordinator content view not removed")
    }
    
    func testThirdCoordinatorStart() {
        guard let appCoord = appCoordinator else {
            XCTFail("Coordinator doesn't exist")
            return
        }
        
        let thirdCoordinator = ThirdCoordinator()
        let thirdModel = ThirdModel()
        let controller = ThirdController(coordinator: thirdCoordinator, datasource: thirdModel)
        controller.contentView = contentView
        
        thirdCoordinator.start(from: appCoord, controller: controller)
        XCTAssertNotNil(thirdCoordinator.rootController, "Root controller not set")
    }
    
    func testThirdCoordinatorRemove() {
        guard let appCoord = appCoordinator else {
            XCTFail("Coordinator doesn't exist")
            return
        }
        
        let thirdCoordinator = ThirdCoordinator()
        let thirdModel = ThirdModel()
        let controller = ThirdController(coordinator: thirdCoordinator, datasource: thirdModel)
        controller.contentView = contentView
        
        thirdCoordinator.start(from: appCoord, controller: controller)
        thirdCoordinator.remove()
        XCTAssertNil(thirdCoordinator.rootController?.contentView?.superview, "Coordinator content view not removed")
    }

}
