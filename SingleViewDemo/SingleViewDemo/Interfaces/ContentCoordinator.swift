//
//  ContentCoordinator.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/29/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

protocol ContentCoordinator {
    func push(to moduleType: ModuleTypes)
    func pop(from: ModuleCoordinator)
}
