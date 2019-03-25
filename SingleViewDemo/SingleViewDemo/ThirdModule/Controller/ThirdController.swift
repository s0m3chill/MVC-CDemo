//
//  ThirdController.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/25/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

class ThirdController {
    
    // MARK: - Properties
    
    private let coordinator: ThirdCoordinator
    
    // MARK: - Initialization
    
    init(coordinator: ThirdCoordinator) {
        self.coordinator = coordinator
    }
    
    // MARK: - API
    
    func didTapBackButton() {
        coordinator.didTapBackButton()
    }
    
}
