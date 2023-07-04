//
//  imageSelectedCollectionViewCell.swift
//  e_commerceLike
//
//  Created by Rajeev on 27/06/23.
//

import UIKit

class imageSelectedCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var selectImage: UIImageView!
    
    
    
    func imageSelectSetupCell(_cate:Product)
    {
        selectImage.image  = UIImage(named: _cate.productImgName)
    }
    
}
