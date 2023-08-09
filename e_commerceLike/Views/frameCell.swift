//
//  frameCell.swift
//  e_commerceLike
//
//  Created by Rajeev on 09/08/23.
//

import UIKit

class frameCell: UICollectionViewCell {
    
    @IBOutlet var frameimg:UIImageView!
    
    func frameSetUpCell(_cards:Product)
    {
        self.frameimg.image = UIImage(named:_cards.productImgName)
    }
}
