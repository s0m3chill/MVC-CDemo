//
//  SecondCoordinator.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/16/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

class SecondCoordinator: ModuleCoordinator {
    
    // MARK: - Properties
    
    var type: ModuleTypes {
        return .second
    }
    weak var rootController: ModuleController?
    
    private var contentCoordinator: AppCoordinatorInterface?
    
    // MARK: - API
    
    func start(from coordinator: AppCoordinatorInterface, controller: ModuleController) {
        let secondController = SecondController(coordinator: self)
        let secondView = SecondView(dataSource: secondController,
                                    eventsHandler: secondController,
                                    frame: controller.contentView?.frame ?? .zero)
        
        rootController = secondController
        rootController?.contentView = secondView
        
        contentCoordinator = coordinator
        controller.contentView?.addSubview(secondView)
    }
        
    // MARK: - Actions
        
    func didTapButton() {
        contentCoordinator?.push(to: .third)
    }
    
    func didTapBackButton() {
        contentCoordinator?.pop(from: type)
    }
    
}
