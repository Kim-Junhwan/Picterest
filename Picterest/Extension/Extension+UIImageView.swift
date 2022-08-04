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
        ImageCache.default.retrieveImage(forKey: urlStr, options: nil) { result in
            switch result {
            case .success(let value):
                if let image = value.image {
                    self.image = image
                } else {
                    guard let url = URL(string: urlStr) else { return }
                    let resource = ImageResource(downloadURL: url, cacheKey: urlStr)
                    self.kf.setImage(with: resource)
                }
            case .failure(let error):
                print("Image Load Error \(error.localizedDescription)")
            }
        }
        }
}
