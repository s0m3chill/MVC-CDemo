//
//  ModuleFactoryTests.swift
//  SingleViewDemoTests
//
//  Created by Dariy Kordiyak on 3/29/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import XCTest
@testable import SingleViewDemo

class ModuleFactoryTests: XCTestCase {
    
    // MARK: - Properties
    
    private var moduleFactory: ModuleFactory?
    
    // MARK: - Setup

    override func setUp() {
        super.setUp()
        
        moduleFactory = ModuleFactory()
    }
    
    override func tearDown() {
        super.tearDown()
        
        moduleFactory = nil
    }
    
    // MARK: - Tests
    
    func testCreatedModule() {
        guard let factory = moduleFactory else {
            XCTFail("Module factory doesn't exist")
            return
        }
        
        factory.type = .third
        let coordinator = factory.moduleCoordinator()
        XCTAssert(coordinator.type == .third, "Module creation failure")
    }

}
