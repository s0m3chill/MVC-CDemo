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
    
    private var appCoordinator: AppCoordinator?
    private var moduleCoordinator: ModuleCoordinator?
    
    private let contentView = UIView(frame: .zero)
    
    // MARK: - Setup

    override func setUp() {
        super.setUp()
        
        moduleCoordinator = SecondCoordinator()
        appCoordinator = AppCoordinator(contentController: ContentViewController(),
                                            moduleFactory: ModuleFactory())
    }
    
    override func tearDown() {
        super.tearDown()
        
        appCoordinator = nil
        moduleCoordinator = nil
    }
    
    // MARK: - Tests
    
    func testCoordinatorType() {
        guard let modCoord = moduleCoordinator else {
            XCTFail("Module coordinator doesn't exist")
            return
        }
        
        XCTAssertTrue(modCoord.type == .second, "Wrong coordinator type")
    }
    
    func testCoordinatorStart() {
        guard let appCoord = appCoordinator,
              let modCoord = moduleCoordinator
        else {
            XCTFail("Coordinator(s) doesn't exist")
            return
        }
        
        let controller = SecondController(coordinator: SecondCoordinator())
        controller.contentView = contentView
        
        modCoord.start(from: appCoord, controller: controller)
        XCTAssertNotNil(modCoord.rootController, "Root controller not set")
    }
    
    func testCoordinatorRemove() {
        guard let appCoord = appCoordinator,
              let modCoord = moduleCoordinator
            else {
                XCTFail("Coordinator(s) doesn't exist")
                return
        }
        
        let controller = SecondController(coordinator: SecondCoordinator())
        controller.contentView = contentView
        
        modCoord.start(from: appCoord, controller: controller)
        modCoord.remove()
        XCTAssertNil(modCoord.rootController?.contentView?.superview, "Coordinator content view not removed")
    }

}
