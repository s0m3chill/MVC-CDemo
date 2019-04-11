//
//  TestAppCoordinator.swift
//  SingleViewDemoTests
//
//  Created by Dariy Kordiyak on 4/11/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import Foundation
@testable import SingleViewDemo

class TestAppCoordinator: AppCoordinatorInterface {
    
    enum IsCalled {
        case not
        case push(ModuleTypes)
        case pop(ModuleTypes)
    }
    
    private(set) var isCalled: IsCalled  = .not
    
    // MARK: - Properties
    
    var viewModules: [ModuleCoordinator] = []
    
    private let moduleFactory: ModuleFactory
    private let contentController: ContentViewController
    
    // MARK: - Initialization
    
    init(contentController: ContentViewController,
         moduleFactory: ModuleFactory) {
        self.contentController = contentController
        self.moduleFactory = moduleFactory
        contentController.contentView = contentController.view
    }
    
    // MARK: - API
    
    func push(to module: ModuleTypes) {
        isCalled = .push(module)
    }
    
    func pop(from: ModuleTypes) {
        isCalled = .pop(from)
    }
    
}
