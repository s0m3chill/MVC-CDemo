//
//  ContentCoordinator.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/29/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

protocol ContentCoordinator {
    /// Module coordinators stack
    var viewModules: [ModuleCoordinator] { get set }
    /// Proceed to next module
    func push(to module: ModuleTypes)
    /// Pop back from module
    func pop(from: ModuleCoordinator)
}
