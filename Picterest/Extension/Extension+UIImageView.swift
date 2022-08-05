//
//  Extension+UIImageView.swift
//  Picterest
//
//  Created by JunHwan Kim on 2022/07/25.
//

import Foundation
import Kingfisher
import UIKit

extension UIImageView {
    func load(urlStr: String) {
        NetworkManager.shared.fetchImage(urlStr: urlStr) { image in
            self.image = image
        }
        }
}
