//
//  ModuleFactoryTests.swift
//  SingleViewDemoTests
//
//  Created by Dariy Kordiyak on 3/29/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import XCTest

class ModuleFactoryTests: XCTestCase {
    
    // MARK: - Properties
    
    private var moduleFactory: ModuleFactory!
    
    // MARK: - Setup

    override func setUp() {
        moduleFactory = ModuleFactory()
    }
    
    // MARK: - Tests
    
    func testCreatedModule() {
        let coordinator = moduleFactory.moduleCoordinator()
        XCTAssert(coordinator.type == .first, "Module creation failure")
    }
    
    func testCreatedModuleWithTypeSet() {
        moduleFactory.type = .third
        let coordinator = moduleFactory.moduleCoordinator()
        XCTAssert(coordinator.type == .third, "Module creation failure")
    }

}
