//
//  productCell.swift
//  e_commerceLike
//
//  Created by Rajeev on 05/05/23.
//

import UIKit

class productCell: UICollectionViewCell {
    
    @IBOutlet weak var productImg: UIImageView?
    @IBOutlet weak var productTitle: UILabel?
    @IBOutlet weak var productPrice: UILabel?
    
    
    @IBOutlet weak var tempcheck: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    
    //same var productPrice:UILabel!
    override  func awakeFromNib() {
        setViewCell()
    }
    
    func GIFsetUpCell(_products:Product)
    {
        self.img.image = UIImage(named:_products.productImgName)
    }
    func setViewCell()
    {
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
    }
}
