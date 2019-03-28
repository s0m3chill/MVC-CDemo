//
//  ContentViewController.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/15/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {
    
    // MARK: - Properties
    
    /// Module coordinators stack
    private var viewModules: [ModuleCoordinator] = []
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// Each module, including content's background has different color
        /// In order to test view hierarchy in view debug
        view.backgroundColor = .red
        
        proceedTo(FirstCoordinator())
    }
    
    // MARK: - API
    
    /// Perform PUSH transition to module's view
    func proceedForwards(from module: ModuleCoordinator) {
        switch viewModules.count {
        case 1:
            proceedTo(SecondCoordinator())
        case 2:
            proceedTo(ThirdCoordinator())
        default:
            break
        }
    }
    
    /// Perform POP transition from module's view
    func proceedBackwards(from module: ModuleCoordinator) {
        returnBack(from: module)
    }
    
    // MARK: - Private
    
    /// Adds new module coordinator to modules array and
    /// Inserts module's view on top of content's subviews
    ///
    /// - Parameter module: module coordinator
    private func proceedTo(_ module: ModuleCoordinator) {
        module.start(from: self)
        viewModules.append(module)
    }
    
    /// Removes module coordinator from modules array and content's superview
    ///
    /// - Parameter module: module coordinator
    private func returnBack(from module: ModuleCoordinator) {
        module.remove()
        viewModules.removeLast()
    }
    
}

