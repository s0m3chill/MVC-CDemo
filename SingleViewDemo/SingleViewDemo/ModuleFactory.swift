//
//  ModuleFactory.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/29/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

class ModuleFactory {
    
    // MARK: - Properties
    
    var type: ModuleTypes = .first
    
    // MARK: - API
    
    func moduleCoordinator() -> ModuleCoordinator {
        switch type {
        case .first:
            return FirstCoordinator()
        case .second:
            return SecondCoordinator()
        case .third:
            return ThirdCoordinator()
        }
    }
    
}
