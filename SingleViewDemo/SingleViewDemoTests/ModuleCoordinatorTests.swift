//
//  ModuleCoordinatorTests.swift
//  SingleViewDemoTests
//
//  Created by Dariy Kordiyak on 3/29/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import XCTest

class ModuleCoordinatorTests: XCTestCase {
    
    // MARK: - Properties
    
    private var contentCoordinator: AppCoordinator!
    private var controller: SecondController!
    
    private var moduleCoordinator: ModuleCoordinator!
    private let contentView = UIView(frame: .zero)
    
    // MARK: - Setup

    override func setUp() {
        moduleCoordinator = SecondCoordinator()
        
        contentCoordinator = AppCoordinator(contentController: ContentViewController(),
                                            moduleFactory: ModuleFactory())
        controller = SecondController(coordinator: SecondCoordinator())
        controller.contentView = contentView
    }
    
    // MARK: - Tests
    
    func testCoordinatorType() {
        XCTAssertTrue(moduleCoordinator.type == .second, "Wrong coordinator type")
    }
    
    func testCoordinatorStart() {
        moduleCoordinator.start(from: contentCoordinator, controller: controller)
        XCTAssertNotNil(moduleCoordinator.rootController, "Root controller not set")
    }
    
    func testCoordinatorRemove() {
        moduleCoordinator.start(from: contentCoordinator, controller: controller)
        moduleCoordinator.remove()
        XCTAssertNil(moduleCoordinator.rootController?.contentView?.superview, "Coordinator content view not removed")
    }

}
