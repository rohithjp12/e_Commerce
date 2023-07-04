//
//  ProductModel.swift
//  e_commerceLike
//
//  Created by Rajeev on 05/05/23.
//

import Foundation


struct Product
{
   
    private(set) public var productImgName:String
  
    init(_productImgname:String)
    {
     //   self.ProductTitle = _productTitle
       // self.productPrice = _productPrice
        self.productImgName = _productImgname
    }
}
