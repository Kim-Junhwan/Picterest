//
//  LoginCoordinator.swift
//  Picterest
//
//  Created by JunHwan Kim on 2022/08/23.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    private var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let loginViewController = LoginViewController()
        self.window.rootViewController = loginViewController
    }
    
    
}
