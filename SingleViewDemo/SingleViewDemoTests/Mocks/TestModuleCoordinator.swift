//
//  TestModuleCoordinator.swift
//  SingleViewDemoTests
//
//  Created by Dariy Kordiyak on 4/11/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import Foundation
@testable import SingleViewDemo

class TestModuleCoordinator: ModuleCoordinator {
    
    enum IsCalled {
        case not
        case start
        case remove
    }
    
    private(set) var isCalled: IsCalled  = .not
    
    // MARK: - Properties
    
    var type: ModuleTypes {
        return .first
    }
    
    var rootController: ModuleController?
    
    func start(from coordinator: AppCoordinatorInterface, controller: ModuleController) {
        isCalled = .start
    }
    
    func remove() {
        isCalled = .remove
    }
    
}
