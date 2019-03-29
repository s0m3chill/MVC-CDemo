//
//  ModuleCoordinator.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/16/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

protocol ModuleCoordinator: class {
    /// Module coordinator identifier
    var type: ModuleTypes { get }
    /// Root view controller for the module, should be used as WEAK
    var rootController: ModuleController? { get }
    /// Show module, based on content view controller
    func start(from coordinator: ContentCoordinator, controller: ModuleController)
    /// Remove module from content view controller
    func remove()
}

extension ModuleCoordinator {
    
    func remove() {
        rootController?.contentView?.removeFromSuperview()
    }
    
}
