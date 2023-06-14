//
//  CategoryCell.swift
//  e_commerceLike
//
//  Created by Rajeev on 05/05/23.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    
 
    @IBOutlet weak var categoryimage1: UIImageView!
    @IBOutlet weak var categoryImage2: UIImageView!
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet weak var categoryyimage3: UIImageView!
    
   
    @IBOutlet weak var cateeoogooryImage4: UIImageView!
    
    
    
    override func awakeFromNib() {
        SetViewCell()
        setvalueCell2()
        
    }
    
    func setupCell(_Category:Category)
    {
        categoryimage1.image = UIImage(named: _Category.imgName)
        categoryimage1.layer.cornerRadius = 20
    }
    
    func setupCell2(_Category2:Category2)
    {
        categoryImage2.image = UIImage(named: _Category2.imgName2)
        categoryImage2.layer.cornerRadius = 20
    }
    
    func setupCell3(_Category3:Category3)
    {
        categoryyimage3.image = UIImage(named: _Category3.imgName3)
        categoryyimage3.layer.cornerRadius = 20
    }
    
    func setupCell4(_Category4:Category4)
    {
        cateeoogooryImage4.image = UIImage(named: _Category4.imgname4)
        cateeoogooryImage4.layer.cornerRadius = 20
    }
    func setvalueCell2()
    {
        self.layer.cornerRadius = 20
        self.clipsToBounds = true
    }
    func SetViewCell()
    {
        self.layer.cornerRadius = 20
        self.clipsToBounds = true
    }
    
}
