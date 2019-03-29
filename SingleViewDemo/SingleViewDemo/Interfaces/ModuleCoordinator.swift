//
//  ModuleCoordinator.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/16/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

protocol ModuleCoordinator: class {
    /// Content coordinator for module
    var contentCoordinator: (ContentCoordinator & UIViewController)? { get }
    /// Root view controller for the module, should be used as WEAK
    var rootController: ModuleController? { get }
    /// Show module, based on content view controller
    func start(from contentCoordinator: ContentCoordinator & UIViewController)
    /// Remove module from content view controller
    func remove()
}

extension ModuleCoordinator {
    
    func remove() {
        rootController?.view?.removeFromSuperview()
    }
    
}
