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
    
    // MARK: - Tests
    
    func testFirstModuleCreation() {
        let coordinator = ModuleFactory.moduleCoordinator(for: .first)
        XCTAssert(coordinator.type == .first, "First module creation failure")
    }
    
    func testSecondModuleCreation() {
        let coordinator = ModuleFactory.moduleCoordinator(for: .second)
        XCTAssert(coordinator.type == .second, "Second module creation failure")
    }
    
    func testThirdModuleCreation() {
        let coordinator = ModuleFactory.moduleCoordinator(for: .third)
        XCTAssert(coordinator.type == .third, "Third module creation failure")
    }

}
