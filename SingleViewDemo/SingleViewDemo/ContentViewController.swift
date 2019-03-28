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
        proceedTo(FirstCoordinator())
    }
    
    // MARK: - API
    
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
    
    func proceedBackwards(from module: ModuleCoordinator) {
        returnBack(from: module)
    }
    
    // MARK: - Private
    
    /// Adds new module coordinator to modules array and starts it
    ///
    /// - Parameter module: module coordinator
    private func proceedTo(_ module: ModuleCoordinator) {
        module.start(from: self)
        viewModules.append(module)
    }
    
    private func returnBack(from module: ModuleCoordinator) {
        module.remove()
        viewModules.removeLast()
    }
    
}

