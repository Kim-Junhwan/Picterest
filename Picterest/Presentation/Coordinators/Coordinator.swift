//
//  Coordinator.swift
//  Picterest
//
//  Created by JunHwan Kim on 2022/08/21.
//

import Foundation

protocol Coordinator: AnyObject {
    
    var childCoordinators: [Coordinator] { get set }
    
    func start()
}
