//
//  ModuleCoordinator.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/16/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

protocol ModuleCoordinator: class {
    /// Root view controller for the module, should be used as WEAK
    var rootController: ContentViewController? { get }
    /// Show module, based on content view controller
    func start(from contentController: ContentViewController)
}
