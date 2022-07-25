//
//  ImageInfoView.swift
//  Picterest
//
//  Created by JunHwan Kim on 2022/07/25.
//

import UIKit

class ImageInfoView: UIView {
    private lazy var blackAlphaView: UIView = {
        let blackAlphaView = UIView()
        blackAlphaView.translatesAutoresizingMaskIntoConstraints = false
        blackAlphaView.backgroundColor = .black
        blackAlphaView.alpha = 0.5
        
        return blackAlphaView
    }()
    
    private lazy var saveStarButton: UIButton = {
        let saveStarButton = UIButton()
        saveStarButton.tintColor = .white
        saveStarButton.translatesAutoresizingMaskIntoConstraints = false
        saveStarButton.setImage(UIImage(systemName: "star"), for: .normal)
        
        return saveStarButton
    }()
    
    lazy var imageTitleOrIndexLabel: UILabel = {
        let imageTitleOrIndexLabel = UILabel()
        imageTitleOrIndexLabel.translatesAutoresizingMaskIntoConstraints = false
        imageTitleOrIndexLabel.textColor = .white
        imageTitleOrIndexLabel.font = UIFont.systemFont(ofSize: 15, weight: .light)
        
        return imageTitleOrIndexLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
        autoLayOut()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addView(){
        self.addSubview(blackAlphaView)
        self.addSubview(saveStarButton)
        self.addSubview(imageTitleOrIndexLabel)
    }
    
    func autoLayOut(){
        let padding : CGFloat = 5
        NSLayoutConstraint.activate([
            blackAlphaView.topAnchor.constraint(equalTo: self.topAnchor),
            blackAlphaView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            blackAlphaView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            blackAlphaView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            saveStarButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            saveStarButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            
            imageTitleOrIndexLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            imageTitleOrIndexLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
        ])
    }
}