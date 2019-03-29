//
//  SecondController.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/16/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

class SecondController: ModuleController {
    
    // MARK: - Properties
    
    weak var view: UIView?
    
    private let coordinator: SecondCoordinator
    
    // MARK: - Initialization
    
    init(coordinator: SecondCoordinator) {
        self.coordinator = coordinator
    }
    
    // MARK: - API
    
    func didTapBackButton() {
        coordinator.didTapBackButton()
    }
    
    func didTapButton() {
        coordinator.didTapButton()
    }
    
}
