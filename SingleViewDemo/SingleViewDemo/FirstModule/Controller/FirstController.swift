//
//  FirstController.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/16/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

class FirstController: ModuleController {
    
    // MARK: - Properties
    
    weak var view: UIView?
    
    private let coordinator: FirstCoordinator
    
    // MARK: - Initialization
    
    init(coordinator: FirstCoordinator) {
        self.coordinator = coordinator
    }
    
    // MARK: - Actions
    
    func didTapOnActionButton() {
        coordinator.didTapButton()
    }
    
}
