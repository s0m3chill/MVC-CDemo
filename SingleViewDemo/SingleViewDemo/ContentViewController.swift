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
        
        startFirstModule()
    }
    
    // MARK: - Setup
    
    private func startFirstModule() {
        viewModules.removeAll()
        
        let coordinator = FirstCoordinator()
        coordinator.start(from: self)
        
        viewModules.append(coordinator)
    }
    
    private func startSecondModule() -> ModuleCoordinator {
        let coordinator = SecondCoordinator()
        coordinator.start(from: self)
        
        return coordinator
        //viewModules.append(coordinator)
    }
    
    private func startThirdModule() {
        let coordinator = ThirdCoordinator()
        coordinator.start(from: self)
        
        viewModules.append(coordinator)
    }
    
    // MARK: - API
    
    func proceedForwards(from module: ModuleCoordinator) {
        switch viewModules.count {
        case 1:
            let c = startSecondModule()
            viewModules.append(c)
        case 2:
            startThirdModule()
        default:
            break
        }
    }
    
    func proceedBackwards(from module: ModuleCoordinator) {
        switch viewModules.count {
        case 2:
            startFirstModule()
        case 3:
            viewModules.removeLast()
            startSecondModule()
        default:
            break
        }
    }
    
}

