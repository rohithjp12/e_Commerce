//
//  cardCell.swift
//  e_commerceLike
//
//  Created by Rajeev on 22/05/23.
//

import Foundation
import UIKit

class cardCell: UICollectionViewCell{
    @IBOutlet weak var cardImg:UIImageView!

    override func awakeFromNib()
    {
        
    }
    func cardSetUpCell(_cards:Product)
    {
        self.cardImg.image = UIImage(named:_cards.productImgName)
    }
}
