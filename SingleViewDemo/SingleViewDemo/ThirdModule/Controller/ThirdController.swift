//
//  ThirdController.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/25/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

class ThirdController: ModuleController {
    
    // MARK: - Properties
    
    weak var view: UIView?
    
    private let coordinator: ThirdCoordinator
    private let datasource: ThirdModel
    
    // MARK: - Initialization
    
    init(coordinator: ThirdCoordinator, datasource: ThirdModel) {
        self.coordinator = coordinator
        self.datasource = datasource
    }
    
    // MARK: - API
    
    func imageName() -> String {
        return datasource.imageName()
    }
    
    func didTapBackButton() {
        coordinator.didTapBackButton()
    }
    
}
