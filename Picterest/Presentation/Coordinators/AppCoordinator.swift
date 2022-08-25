//
//  AppCoordinator.swift
//  Picterest
//
//  Created by JunHwan Kim on 2022/08/23.
//

import Foundation
import UIKit

class AppCoordinator : Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    private var window: UIWindow
    
    var isLogged: Bool = false
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        if self.isLogged {
            showTabBarViewController()
        } else {
            showLoginViewController()
        }
    }
    
    func showLoginViewController() {
        let coordinator = LoginCoordinator(window: window)
        childCoordinators.append(coordinator)
        coordinator.start()
    }
    
    func showTabBarViewController() {
        let coordinator = TabBarCoordinator(window: window)
        childCoordinators.append(coordinator)
        coordinator.start()
    }
}
