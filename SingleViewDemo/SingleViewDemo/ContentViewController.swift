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
    
    private var viewModules: [ModuleCoordinator] = []
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        addNew(FirstCoordinator())
    }
    
    // MARK: - API
    
    func proceedForwards(from module: ModuleCoordinator) {
        switch viewModules.count {
        case 1:
            addNew(SecondCoordinator())
        case 2:
            addNew(ThirdCoordinator())
        default:
            break
        }
    }
    
    func proceedBackwards(from module: ModuleCoordinator) {
        viewModules.removeLast()
        
        switch viewModules.count {
        case 1:
            start(FirstCoordinator())
        case 2:
            start(SecondCoordinator())
        default:
            break
        }
    }
    
    // MARK: - Private
    
    /// Add new module coordinator to modules array and starts it
    ///
    /// - Parameter module: module coordinator
    private func addNew(_ module: ModuleCoordinator) {
        start(module)
        viewModules.append(module)
    }
    
    /// Starts module coordinator, that was already added to modules array
    ///
    /// - Parameter module: module coordinator
    private func start(_ module: ModuleCoordinator) {
        module.start(from: self)
    }
    
}

