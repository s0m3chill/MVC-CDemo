//
//  SecondController.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/16/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import Foundation

class SecondController {
    
    // MARK: - Properties
    
    private let coordinator: SecondCoordinator
    
    // MARK: - Initialization
    
    init(coordinator: SecondCoordinator) {
        self.coordinator = coordinator
    }
    
    // MARK: - API
    
    func didTapBackButton() {
        coordinator.didTapBackButton()
    }
    
}
