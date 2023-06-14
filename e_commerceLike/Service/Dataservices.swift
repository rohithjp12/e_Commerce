//
//  Dataservices.swift
//  e_commerceLike
//
//  Created by Rajeev on 05/05/23.
//

import Foundation



class DataService
{
    static let instance = DataService()
    private let categories =
    [
        Category(_title: "popular1", _imgName: "anniversary"),
        Category(_title: "popular2", _imgName: "goodnight"),
        Category(_title: "popular3", _imgName: "love"),
        Category(_title: "popular4", _imgName: "missyou"),
        Category(_title: "popular5", _imgName: "birthday"),

    ]
    
    func getCategoires() -> [Category]
    {
        return categories
    }
    
    
    private let anniversary1 = [
                     
              Product( _productImgname: "ani1"),
              Product(_productImgname: "ani2"),
              Product(_productImgname: "ani3"),
              Product( _productImgname: "ani4"),
              Product(_productImgname: "ani5"),
              Product(_productImgname: "ani6"),
              Product( _productImgname: "ani7"),
              Product( _productImgname: "ani8"),
              Product( _productImgname: "ani9"),
              Product( _productImgname: "ani2"),
              Product( _productImgname: "ani11"),
              Product(  _productImgname: "ani12"),
              Product(_productImgname: "ani13"),
              Product( _productImgname: "ani14"),

                       ]
    
    private let goodnight1 = [
    
        Product(  _productImgname: "g1"),
        Product(_productImgname: "g2"),
        Product(_productImgname: "g3"),
        Product(_productImgname: "g4"),
        Product( _productImgname: "g5"),
        Product( _productImgname: "g6"),
        Product( _productImgname: "g7"),
        Product( _productImgname: "g8"),
        Product( _productImgname: "g9"),
        Product( _productImgname: "g10"),
        Product( _productImgname: "g11"),
        Product( _productImgname: "g12"),
    ]
    
    private let love1 = [
          Product( _productImgname: "l1"),
          Product( _productImgname: "l2"),
          Product( _productImgname: "l3"),
          Product( _productImgname: "l4"),
          Product( _productImgname: "l5"),
          Product( _productImgname: "l6"),
          Product( _productImgname: "l7"),
          Product(_productImgname: "l8"),
          Product( _productImgname: "l9"),
          Product( _productImgname: "l10"),
          Product(  _productImgname: "l11"),
          Product( _productImgname: "l12"),
    ]
    private let birthday1 = [
        Product( _productImgname: "b1"),
        Product(_productImgname: "b2"),
        Product(_productImgname: "b3"),
        Product( _productImgname: "b4"),
        Product( _productImgname: "b5"),
        Product(_productImgname: "b6"),
        Product(_productImgname: "b7"),
        Product(_productImgname: "b8"),
        Product( _productImgname: "b9"),
        Product( _productImgname: "b10"),
        Product( _productImgname: "b11"),
        Product( _productImgname: "b12"),
        Product(_productImgname: "b13"),
        Product( _productImgname: "b14"),
        Product( _productImgname: "b15"),
    ]
    private let missyou1 =
    [
         Product( _productImgname: "mis1"),
         Product( _productImgname: "mis2"),
         Product( _productImgname: "mis3"),
         Product( _productImgname: "mis4"),
         Product( _productImgname: "mis5"),
         Product( _productImgname: "mis6"),
         Product( _productImgname: "mis7"),
         Product( _productImgname: "mis8"),
         Product( _productImgname: "mis9"),
         Product( _productImgname: "mis10"),
         Product( _productImgname: "mis11"),
         Product( _productImgname: "mis12"),
         Product( _productImgname: "mis13"),
         Product( _productImgname: "mis14"),
         Product( _productImgname: "mis15"),

         
    ]
    
    private let empty = [
                         Product( _productImgname: "nothing")
    ]
    private let allProducts = [Product]()
    
//    func getProducts(Title:String) -> [Product]
//    {
//        switch Title
//        {
//        case "popular1":
//            return getcat1()
//            break
//
//        case "popular2":
//            return getCat2()
//           break
//
//        case "popular3":
//            return getCat3()
//
//        default:
//            return empty
//        }
//    }
    func getcat1()-> [Product]
    {
        return anniversary1
    }
    func getCat2()->[Product]
    {
        return goodnight1
    }
    func getCat3()->[Product]
    {
        return love1
    }
    func getCat4()->[Product]
    {
        return missyou1
    }
    func getcat5()->[Product]
    {
        return birthday1
    }
    
    private let cardAnniversary =
    [
        Product( _productImgname: "ani14"),
        Product(_productImgname: "ani12"),
        Product(_productImgname: "ani13"),
        Product( _productImgname: "ani14"),
        Product(_productImgname: "ani5"),
        Product(_productImgname: "ani6"),
        Product( _productImgname: "ani7"),
        Product( _productImgname: "ani8"),
        Product( _productImgname: "ani9"),
        Product( _productImgname: "ani2"),
        Product( _productImgname: "ani11"),
        Product(  _productImgname: "ani1"),
        Product(_productImgname: "ani1"),
        Product( _productImgname: "ani1"),
    ]
    private let cardGoodNight = [
        Product(  _productImgname: "g12"),
        Product(_productImgname: "g11"),
        Product(_productImgname: "g8"),
        Product(_productImgname: "g4"),
        Product( _productImgname: "g5"),
        Product( _productImgname: "g6"),
        Product( _productImgname: "g7"),
        Product( _productImgname: "g8"),
        Product( _productImgname: "g9"),
        Product( _productImgname: "g10"),
        Product( _productImgname: "g11"),
        Product( _productImgname: "g12"),
    ]
    private let cardLove = [
        Product( _productImgname: "l6"),
        Product( _productImgname: "l7"),
        Product(_productImgname: "l8"),
        Product( _productImgname: "l9"),
        Product( _productImgname: "l10"),
        Product(  _productImgname: "l11"),
        Product( _productImgname: "l12"),
        Product( _productImgname: "l1"),
        Product( _productImgname: "l2"),
        Product( _productImgname: "l3"),
        Product( _productImgname: "l4"),
        Product( _productImgname: "l5"),
    ]
    private let cardMissyou = [
        Product( _productImgname: "mis7"),
        Product( _productImgname: "mis8"),
        Product( _productImgname: "mis9"),
        Product( _productImgname: "mis10"),
        Product( _productImgname: "mis11"),
        Product( _productImgname: "mis12"),
        Product( _productImgname: "mis13"),
        Product( _productImgname: "mis1"),
        Product( _productImgname: "mis15"),
        Product( _productImgname: "mis1"),
        Product( _productImgname: "mis2"),
        Product( _productImgname: "mis3"),
        Product( _productImgname: "mis4"),
        Product( _productImgname: "mis5"),
        Product( _productImgname: "mis6"),
    ]
    private let cardBirthDay = [
        Product( _productImgname: "b5"),
        Product(_productImgname: "b6"),
        Product(_productImgname: "b7"),
        Product(_productImgname: "b8"),
        Product( _productImgname: "b9"),
        Product( _productImgname: "b10"),
        Product( _productImgname: "b11"),
        Product( _productImgname: "b12"),
        Product(_productImgname: "b13"),
        Product( _productImgname: "b14"),
        Product( _productImgname: "b15"),
        Product( _productImgname: "b1"),
        Product(_productImgname: "b2"),
        Product(_productImgname: "b3"),
        Product( _productImgname: "b4"),
    
    ]
    func cardAnniversaryGet()->[Product]
    {
        return cardAnniversary
    }
    func cardGoodNightGet()->[Product]
    {
        return cardGoodNight
    }
    func cardLoveGet()->[Product]
    {
        return cardLove
    }
    func cardtMissYou()->[Product]
    {
        return cardMissyou
    }
    func cardBirthday()->[Product]
    {
        return cardBirthDay
    }
    
    private let quotesAnniversay =
    [
        Product(  _productImgname: "g12"),
        Product(_productImgname: "g11"),
        Product(_productImgname: "g8"),
        Product(_productImgname: "g4"),
        Product( _productImgname: "g5"),
        Product( _productImgname: "g6"),
        Product( _productImgname: "g7"),
        Product( _productImgname: "g8"),
        Product( _productImgname: "g9"),
        Product( _productImgname: "g10"),
        Product( _productImgname: "g11"),
        Product( _productImgname: "g12"),
    ]
    private let quotesGoodNight =
    [
        Product( _productImgname: "ani1"),
        Product(_productImgname: "ani2"),
        Product(_productImgname: "ani3"),
        Product( _productImgname: "ani4"),
        Product(_productImgname: "ani5"),
        Product(_productImgname: "ani6"),
        Product( _productImgname: "ani7"),
        Product( _productImgname: "ani8"),
        Product( _productImgname: "ani9"),
        Product( _productImgname: "ani2"),
        Product( _productImgname: "ani11"),
        Product(  _productImgname: "ani12"),
        Product(_productImgname: "ani13"),
        Product( _productImgname: "ani14"),
        
    ]
    func QuotesAnniversayGet()->[Product]
    {
        return quotesAnniversay
    }
    func QuotesGoodNightGet()->[Product]
    {
        return quotesGoodNight
    }
    
}

class Dataservice2
{

        static let instance2 = Dataservice2()
        private let categories2 =
        [
            Category2(_title2: "love1", _imgName2: "love"),
            Category2(_title2: "love2", _imgName2: "mom"),
            Category2(_title2: "love3", _imgName2: "father"),
            Category2(_title2: "love4", _imgName2: "wife"),
           

        ]
    func getCategoires2() -> [Category2]
    {
        return categories2
    }
    
    private var lovefun1 = [
        Product( _productImgname: "ani1"),
        Product( _productImgname: "l2"),
        Product( _productImgname: "l3"),
        Product( _productImgname: "l4"),
        Product( _productImgname: "l5"),
        Product( _productImgname: "l6"),
        Product( _productImgname: "l7"),
        Product( _productImgname: "l8"),
        Product(_productImgname: "l9"),
        Product( _productImgname: "l10"),
        Product( _productImgname: "l11"),
        Product( _productImgname: "l12"),
    ]
    private var lovefun2 = [
        Product(_productImgname: "m1"),
        Product(_productImgname: "m2"),
        Product(_productImgname: "m3"),
        Product(_productImgname: "m4"),
        Product(_productImgname: "m5"),
        Product(_productImgname: "m6"),
        Product(_productImgname: "m7"),
        Product(_productImgname: "m8"),
        Product(_productImgname: "m9"),
        Product(_productImgname: "m10"),
        Product(_productImgname: "m11"),
        Product(_productImgname: "m12"),
        Product(_productImgname: "m13"),
        Product(_productImgname: "m14"),
        Product(_productImgname: "m15"),
        Product(_productImgname: "m16"),
        Product(_productImgname: "m17"),
        Product(_productImgname: "m18"),
        Product(_productImgname: "m19"),
        Product(_productImgname: "m20"),
    ]
    
    private var lovefun3 = [
        Product(_productImgname: "f1"),
        Product(_productImgname: "f2"),
        Product(_productImgname: "f3"),
        Product(_productImgname: "f4"),
        Product(_productImgname: "f5"),
        Product(_productImgname: "f6"),
        Product(_productImgname: "f7"),
        Product(_productImgname: "f8"),
        Product(_productImgname: "f9"),
        Product(_productImgname: "f10"),
    ]
    private var lovefun4 = [
        Product(_productImgname: "w1"),
        Product(_productImgname: "w2"),
        Product(_productImgname: "w3"),
        Product(_productImgname: "w4"),
        Product(_productImgname: "w5"),
        Product(_productImgname: "w6"),
        Product(_productImgname: "w7"),
        Product(_productImgname: "w8"),
        Product(_productImgname: "w9"),
        Product(_productImgname: "w10"),
    ]
    
    private let empty = [
                         Product( _productImgname: "nothing")
    ]
    private let allProducts = [Product]()
    func loveGIF()-> [Product]
    {
        return lovefun1
    }
    func momGIF()-> [Product]
    {
        return lovefun2
    }
    func fatherGIF()-> [Product]
    {
        return lovefun3
    }
    func wifeGIF()-> [Product]
    {
        return lovefun4
    }
    
    private var cardl1 = [
        Product( _productImgname: "m6"),
        Product( _productImgname: "l7"),
        Product(_productImgname: "l8"),
        Product( _productImgname: "l9"),
        Product( _productImgname: "l10"),
        Product(  _productImgname: "l11"),
        Product( _productImgname: "l12"),
        Product( _productImgname: "l1"),
        Product( _productImgname: "l2"),
        Product( _productImgname: "l3"),
        Product( _productImgname: "l4"),
        Product( _productImgname: "l5"),
    ]
   private var cardl2 = [
    Product(_productImgname: "l1"),
    Product(_productImgname: "m2"),
    Product(_productImgname: "m3"),
    Product(_productImgname: "m4"),
    Product(_productImgname: "m5"),
    Product(_productImgname: "m6"),
    Product(_productImgname: "m7"),
    Product(_productImgname: "m8"),
    Product(_productImgname: "m9"),
    Product(_productImgname: "m10"),
    Product(_productImgname: "m11"),
    Product(_productImgname: "m12"),
    Product(_productImgname: "m13"),
    Product(_productImgname: "m14"),
    Product(_productImgname: "m15"),
    Product(_productImgname: "m16"),
    Product(_productImgname: "m17"),
    Product(_productImgname: "m18"),
    Product(_productImgname: "m19"),
    Product(_productImgname: "m20"),
   ]
    private var cardl3 = [
        Product(_productImgname: "m14"),
        Product(_productImgname: "f2"),
        Product(_productImgname: "f3"),
        Product(_productImgname: "f4"),
        Product(_productImgname: "f5"),
        Product(_productImgname: "f6"),
        Product(_productImgname: "f7"),
        Product(_productImgname: "f8"),
        Product(_productImgname: "f9"),
        Product(_productImgname: "f10"),
    
    ]
    private var cardl4 = [
        Product(_productImgname: "f1"),
        Product(_productImgname: "w2"),
        Product(_productImgname: "w3"),
        Product(_productImgname: "w4"),
        Product(_productImgname: "w5"),
        Product(_productImgname: "w6"),
        Product(_productImgname: "w7"),
        Product(_productImgname: "w8"),
        Product(_productImgname: "w9"),
        Product(_productImgname: "w10"),
    ]
    
   func cardlove()->[Product]
    {
        return cardl1
    }
    func cardmom()->[Product]
    {
        return cardl2
    }
    func cardfather()->[Product]
    {
        return cardl3
    }
    func cardWife()-> [Product]
    {
        return cardl4
    }
    
}

class Dataservice3
{
    static let instance3 = Dataservice3()
    private let categories3 =
    [
        Category3(_imgName3: "husband"),
        Category3(_imgName3: "daughter"),
        Category3(_imgName3: "father"),
        Category3(_imgName3: "wife"),
        Category3(_imgName3: "son"),
        Category3(_imgName3: "mom"),
        Category3(_imgName3: "missyou")

    ]
    func getCategoires3() -> [Category3]
    {
        return categories3
    }
//
//
//    private let bike1 =
//    [
//       Product(_productTitle: "m1 bike", _productPrice: "200", _productImgname: "bike1")
//       Product(_productTitle: "m2 bike", _productPrice: "400", _productImgname: "bik2")
//       Product(_productTitle: "m3 bike", _productPrice: "500", _productImgname: "bike3")
//       Product(_productTitle: "m4 bike", _productPrice: "600", _productImgname: "bike4")
//    ]
}
class Dataservice4
{
    
    static let instance4 = Dataservice4()
    private let categories4 =
    [
          Category4(_imgname4: "sunday"),
          Category4(_imgname4: "monday"),
          Category4(_imgname4: "tuesday"),

          Category4(_imgname4: "wednesday"),
          Category4(_imgname4: "thursday"),
          Category4(_imgname4: "friday"),
          Category4(_imgname4: "saturday"),
          
    ]
    func getCategories4()-> [Category4]
    {
        return categories4
    }
}
