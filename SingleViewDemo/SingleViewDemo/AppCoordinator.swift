//
//  AppCoordinator.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/29/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

class AppCoordinator: ContentCoordinator {
    
    // MARK: - Properties
    
    /// Module construction factory
    private let moduleFactory: ModuleFactory
    /// Content view controler, where modules are added to
    private let contentController: ContentViewController
    /// Module coordinators stack
    private var viewModules: [ModuleCoordinator] = []
    
    // MARK: - Initialization
    init(contentController: ContentViewController,
         moduleFactory: ModuleFactory) {
        self.contentController = contentController
        self.moduleFactory = moduleFactory
        contentController.contentView = contentController.view
    }
    
    // MARK: - API
    
    func push(to moduleType: ModuleTypes) {
        moduleFactory.type = moduleType
        
        let toModule = moduleFactory.module()
        toModule.start(from: self, controller: contentController)
        
        viewModules.append(toModule)
    }
    
    func pop(from: ModuleCoordinator) {
        from.remove()
        viewModules.removeLast()
    }
    
}
