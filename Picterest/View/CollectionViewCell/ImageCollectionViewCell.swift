//
//  ImageCollectionViewCell.swift
//  Picterest
//
//  Created by JunHwan Kim on 2022/07/25.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "ImageCollectionViewCell"
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        
        return imageView
    }()
    
    private lazy var imageInfoView: ImageInfoView = {
       let imageInfoView = ImageInfoView()
        imageInfoView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageInfoView
    }()
   
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
        autoLayOut()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCell(with imageViewModel: ImageViewModel, indexpath: Int){
        self.imageView.load(url: imageViewModel.url)
        self.imageInfoView.imageTitleOrIndexLabel.text = "\(indexpath)번째 사진"
    }
    
    func addView(){
        self.contentView.addSubview(imageView)
        self.contentView.addSubview(imageInfoView)
    }
    
    func autoLayOut(){
        contentView.layer.cornerRadius = 10.0
        contentView.layer.masksToBounds = true
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            imageInfoView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageInfoView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageInfoView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageInfoView.heightAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.2)
        ])
    }
}