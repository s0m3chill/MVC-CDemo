//
//  AppCoordinator.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/29/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

class AppCoordinator: AppCoordinatorInterface {
    
    // MARK: - Properties
    
    /// Module coordinators stack
    var viewModules: [ModuleCoordinator] = []

    /// Module construction factory
    private let moduleFactory: ModuleFactory
    /// Content view controler, where modules are added to
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
        let toModule = ModuleFactory.moduleCoordinator(for: module)
        toModule.start(from: self, controller: contentController)
        
        viewModules.append(toModule)
    }
    
    func pop(from: ModuleTypes) {
        guard let moduleToRemove = (viewModules.first { $0.type == from }) else {
            return
        }
        moduleToRemove.remove()
        
        viewModules.removeLast()
    }
    
}
