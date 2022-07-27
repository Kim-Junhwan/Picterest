//
//  SaveImageManager.swift
//  Picterest
//
//  Created by JunHwan Kim on 2022/07/26.
//

import Foundation

class ImageManager {
    let coredataManager = CoredataManager.shared
    let saveLocalImageFileManager = LocalImageFileManager.shared
    
    func saveImageAndInfo(imageViewModel: ImageViewModel, memo: String){
        saveLocalImageFileManager.saveLocalImage(imageViewModel: imageViewModel) { imageFilePath in
            self.coredataManager.setImageInfo(imageViewModel, memo: memo, saveLocation: imageFilePath)
        }
    }
    
    func deleteImage(savedImageViewModel: SavedImageViewModel, indexPath: Int) {
        saveLocalImageFileManager.deleteLocalImage(id: savedImageViewModel.id) {
            self.coredataManager.deleteCoredata(indexPath: indexPath)
        }
    }
}