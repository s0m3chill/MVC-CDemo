//
//  ContentCoordinator.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/29/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

protocol ContentCoordinator where Self: UIViewController {
    /// Perform PUSH transition to next module's view
    func proceedForwards()
    /// Perform POP transition from module's view
    func proceedBackwards(from module: ModuleCoordinator)
}
