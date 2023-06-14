//
//  CategoryModel.swift
//  e_commerceLike
//
//  Created by Rajeev on 05/05/23.
//

import Foundation



struct Category
{
    private(set) public var imgName:String
    private(set) public var title:String
    init(_title:String, _imgName: String)
    {
        self.title = _title
        self.imgName = _imgName
    }
}




struct Category2
{
    private(set) public var imgName2:String
    private(set) public var title2:String
    
    init(_title2:String,_imgName2: String)
    {
        self.title2 = _title2
        self.imgName2 = _imgName2
    }
}

struct Category3
{
    private(set) public var imgName3:String
    
    init(_imgName3: String)
    {
        self.imgName3 = _imgName3
    }
}
struct Category4
{
    private(set) public var imgname4:String
    
    init(_imgname4: String) {
        self.imgname4 = _imgname4
    }
}
