//
//  quotesCell.swift
//  e_commerceLike
//
//  Created by Rajeev on 22/05/23.
//

import UIKit

class quotesCell: UITableViewCell {

   // @IBOutlet var quotesImage:UIImageView!
    @IBOutlet weak var quotesTitle:UILabel?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
//    func quotesSetUpCell(_quotes:Product)
//    {
//        self.quotesImage.image = UIImage(named: _quotes.productImgName)
//        quotesImage.layer.cornerRadius = 20
//    }
//    
    func quotesTitleSetUpCell(_quotes:quotesModel)
    {
        self.quotesTitle?.text = _quotes.quatesName
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
