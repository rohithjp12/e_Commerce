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
                     
              Product( _productImgname: "anigf20"),
              Product(_productImgname: "anigf11"),
              Product(_productImgname: "anigf13"),
              Product( _productImgname: "anigf14"),
              Product(_productImgname: "anigf15"),
              Product(_productImgname: "anigf20"),
              Product( _productImgname: "anigf17"),
              Product( _productImgname: "anigf11"),
              Product( _productImgname: "anigf19"),
              Product( _productImgname: "anigf12"),
              Product( _productImgname: "anigf11"),
              Product(  _productImgname: "anigf12"),
              Product(_productImgname: "anigf11"),
              Product( _productImgname: "anigf14"),
              Product( _productImgname: "anigf20"),
              Product(_productImgname: "anigf11"),
              Product(_productImgname: "anigf13"),
              Product( _productImgname: "anigf14"),
              Product(_productImgname: "anigf15"),
              Product(_productImgname: "anigf16"),
              Product( _productImgname: "anigf17"),
              Product( _productImgname: "anigf11"),
              Product( _productImgname: "anigf19"),
              Product( _productImgname: "anigf12"),
              Product( _productImgname: "anigf11"),
              Product(  _productImgname: "anigf12"),
              Product(_productImgname: "anigf11"),
              Product( _productImgname: "anigf14"),


                       ]
    
    private let goodnight1 = [
    
      //  Product(  _productImgname: "anigf11"),
        Product(_productImgname: "gng2"),
        Product(_productImgname: "gng3"),
        Product(_productImgname: "gng6"),
        Product( _productImgname: "gng5"),
        Product( _productImgname: "gng6"),
        Product( _productImgname: "gng2"),
        Product( _productImgname: "gng1"),
        Product( _productImgname: "gng5"),
        Product( _productImgname: "gng1"),
        Product( _productImgname: "gng2"),
        Product(_productImgname: "gng2"),
        Product(_productImgname: "gng3"),
        Product(_productImgname: "gng4"),
        Product( _productImgname: "gng5"),
        Product( _productImgname: "gng6"),
        Product( _productImgname: "gng7"),
        Product( _productImgname: "gng1"),
        Product( _productImgname: "gng9"),
        Product( _productImgname: "gng5"),
        Product( _productImgname: "gng1"),
        Product( _productImgname: "gng2"),
    ]
    
    private let love1 = [
          Product( _productImgname: "ll1"),
          Product( _productImgname: "ll2"),
          Product( _productImgname: "ll3"),
          Product( _productImgname: "ll4"),
          Product( _productImgname: "ll5"),
          Product( _productImgname: "ll2"),
          Product( _productImgname: "ll7"),
          Product(_productImgname: "ll1"),
          Product( _productImgname: "ll2"),
          Product( _productImgname: "ll5"),
          Product(  _productImgname: "ll2"),
          Product( _productImgname: "ll1"),
    ]
    private let birthday1 = [
        Product( _productImgname: "bb1"),
        Product(_productImgname: "bb2"),
        Product(_productImgname: "bb3"),
        Product( _productImgname: "bb1"),
        Product( _productImgname: "bb5"),
        Product(_productImgname: "bb6"),
        Product(_productImgname: "bb2"),
        Product(_productImgname: "bb3"),
        Product( _productImgname: "bb4"),
        Product( _productImgname: "bb5"),
        Product(_productImgname: "bb6"),
        Product( _productImgname: "bb1"),
        Product(_productImgname: "bb2"),
        Product(_productImgname: "bb3"),
        Product( _productImgname: "bb4"),
        Product( _productImgname: "bb5"),
        Product(_productImgname: "bb6"),
        Product(_productImgname: "bb2"),
        Product(_productImgname: "bb3"),
       
    ]
    private let missyou1 =
    [
        
        Product( _productImgname: "bb5"),
        Product(_productImgname: "bb1"),
        Product(_productImgname: "bb2"),
        Product(_productImgname: "bb3"),
        Product( _productImgname: "bb4"),
        Product( _productImgname: "bb5"),
        Product(_productImgname: "bb4"),
        Product( _productImgname: "bb1"),
        Product(_productImgname: "bb2"),
        Product(_productImgname: "bb3"),
        Product( _productImgname: "bb4"),
        Product( _productImgname: "bb5"),
         
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
//        Product( _productImgname: "gng1"),
        Product(_productImgname: "ani11"),
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
        Product(  _productImgname: "g10"),
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
    private let quotesTitleAnniversary =
    [
        quotesModel(_quatesName: "You're my sun and moon, and all of my stars. I love you so much. Happy anniversary"),
        quotesModel(_quatesName: "You're everything I've ever wanted and needed in a partner. Thank you for loving me. Happy anniversary"),
        quotesModel(_quatesName: "I’m pretty confident that no one on earth is as lucky as me. Why? Because I get to wake up to you every day. Happy anniversary, baby"),
        quotesModel(_quatesName: "If we hold onto our wounds in an area of life then we hold back the growth of wisdom in that area too"),
        quotesModel(_quatesName: "I’m pretty confident that no one on earth is as lucky as me. Why? Because I get to wake up to you every day. Happy anniversary, baby"),
        quotesModel(_quatesName: "If we hold onto our wounds in an area of life then we hold back the growth of wisdom in that area too"),
        quotesModel(_quatesName: "I’m pretty confident that no one on earth is as lucky as me. Why? Because I get to wake up to you every day. Happy anniversary, baby"),
        quotesModel(_quatesName: "Walking alongside you is the greatest journey of my life. I’ll cherish you always. Happy anniversary"),
        quotesModel(_quatesName: "Your face brings a smile to my face every day and for that I’m forever grateful. Happy anniversary to the person who makes my heart sing"),
        quotesModel(_quatesName: "“I couldn’t survive a day without you. I’m so glad we’ve lived to see another year together.”"),
        quotesModel(_quatesName: "“Our wedding day may not have been perfect, but it was the happiest day of my life. Thank you for being by my side for all these years.”"),
        quotesModel(_quatesName: "“This is our first year together, but we have an eternity to go!”"),
    ]
    private let quotesTitleGoodNight =
    [
        quotesModel(_quatesName: "I'm so grateful for your presence in my life, even when we're not together. Good night!"),
        quotesModel(_quatesName: "Your smile is the most beautiful in the world. Now you know what I;m dreaming of tonight!"),
        quotesModel(_quatesName: "I'm grateful for another day spent loving you. Good night and sweet dreams"),
        quotesModel(_quatesName: "Hope you have a good sleep, sweet dreams, and an even better day tomorrow."),
        quotesModel(_quatesName: "Good night! Always here, always in your corner. Wishing you some sweet dreams"),
        quotesModel(_quatesName: "Good night, sleep well, and remember that tomorrow is another day to procrastinate."),
        quotesModel(_quatesName: "Let the monsters under the bed know we're going to have a stern talking to if they keep you up"),
        quotesModel(_quatesName: "Sleep, my love, dream happy dreams. You are the only one who has ever touched my heart. It will forever be yours."),
        quotesModel(_quatesName: "Sleep, my love, dream happy dreams. You are the only one who has ever touched my heart. It will forever be yours."),
        quotesModel(_quatesName: "May tonight be a lovely and serene bridge that will lead you to a wonderful tomorrow"),
        quotesModel(_quatesName: "This is the end of the day, but soon there will be a new day."),

    ]
    private let quotesTitleLove =
    [
        quotesModel(_quatesName: "It only took one look at you to know you were going to be my wife. I thank God every day that I listened to my gut. The rest is history."),
        quotesModel(_quatesName: "Thanks for being my knight in shining armor and having my back. Love you so much"),
        quotesModel(_quatesName: "There are no words I could use to describe the love we share. I’m so incredibly thankful for you"),
        quotesModel(_quatesName: "No matter how dull my days go, your presence makes everything in my life colorful, so grateful to have you in my life"),
        quotesModel(_quatesName: "I cannot be more blessed for having you in my life. I will cherish you in my heart forever and always"),
        quotesModel(_quatesName: "Thanks for being my knight in shining armor and having my back. Love you so much"),
        quotesModel(_quatesName: "I never knew that love could be this beautiful until you came into my life. I love you more than you know"),
        quotesModel(_quatesName: "No matter how dull my days go, your presence makes everything in my life colorful, so grateful to have you in my life"),
        quotesModel(_quatesName: "There are no words I could use to describe the love we share. I’m so incredibly thankful for you"),
        quotesModel(_quatesName: "Thanks for being my knight in shining armor and having my back. Love you so much"),
    ]
    private let quotesTitleMissYou =
    [
        quotesModel(_quatesName: "Listen to the sunset; see its pretty hue. When you see it, think of me, and I’ll think of you"),
        quotesModel(_quatesName: "When we miss someone, often, what we really miss is the part of us that with this someone awakens"),
        quotesModel(_quatesName: "They say when you are missing someone that they are probably feeling the same, but I don't think it's possible for you to miss me"),
        quotesModel(_quatesName: "Poets use countless words to describe their pain, but I only need three: I miss you"),
        quotesModel(_quatesName: "When you are missing someone, time seems to move slower, and when I’m falling in love with someone, time seems to be moving faster"),
        quotesModel(_quatesName: "Missing you is flashes of our past and fantasies of our future with the hard irony of the absence of our present as present occurs"),
        quotesModel(_quatesName: "Listen to the sunset; see its pretty hue. When you see it, think of me, and I’ll think of you"),
        quotesModel(_quatesName: "Missing you is flashes of our past and fantasies of our future with the hard irony of the absence of our present as present occurs"),
        quotesModel(_quatesName: "When we miss someone, often, what we really miss is the part of us that with this someone awakens"),
        quotesModel(_quatesName: "When you are missing someone, time seems to move slower, and when I’m falling in love with someone, time seems to be moving faster"),
        quotesModel(_quatesName: "Listen to the sunset; see its pretty hue. When you see it, think of me, and I’ll think of you"),

    ]
    private let quotesTitleBirthday =
    [
        quotesModel(_quatesName: "Wishing you nothing but tacos and champagne on your big day, or whatever else makes it special"),
        quotesModel(_quatesName: "Another birthday, another year older. Don’t you think it’s about time we started to act our age? Well, I know exactly what you’ll say. Next year. Happy birthday."),
        quotesModel(_quatesName: "Wishing you nothing but tacos and champagne on your big day, or whatever else makes it special!"),
        quotesModel(_quatesName: "I know we don’t live together anymore so I’m shipping you an abundance of love this birthday, bestie."),
        quotesModel(_quatesName: "Happy birthday! Thank you for living your life in a way that makes every day worth celebrating"),
        quotesModel(_quatesName: "May you be gifted with life’s biggest joys and never-ending bliss. After all, you yourself are a gift to earth, so you deserve the best. Happy birthday."),
        quotesModel(_quatesName: "Birthdays are a new start, a fresh beginning and a time to pursue new endeavors with new goals. Move forward with confidence and courage."),
        quotesModel(_quatesName: "Your birthday is the first day of another 365-day journey. Be the shining thread in the beautiful tapestry of the world to make this year the best ever. Enjoy the ride"),
        quotesModel(_quatesName: "Forget about the past, you can’t change it. Forget about the future, you can’t predict it. And forget about the present, I didn’t get you one. Happy birthday!"),
        quotesModel(_quatesName: "Happy Birthday! You know, you don’t look that old. But then, you don’t look that young, either"),

    ]
    
    func quotesTitleGetAnniversary()->[quotesModel]
    {
        return  quotesTitleAnniversary
    }
   
    func quotesTitleGetGoodNight()->[quotesModel]
    {
        return quotesTitleGoodNight
    }
    func quotesTitleGetLove()->[quotesModel]
    {
        return quotesTitleLove
    }
    func quotesTitleGetMiss()->[quotesModel]
    {
        return quotesTitleMissYou
    }
    func quotesTitleGetBirthday()->[quotesModel]
    {
       return quotesTitleBirthday
    }
    
    private var frame1anni =
    [
        Product(_productImgname: "fat1"),
        Product(_productImgname: "fat2"),
        Product(_productImgname: "fat4"),
        Product(_productImgname: "fat5"),
        Product(_productImgname: "fat2"),
        Product(_productImgname: "fat5"),
       
    ]
    func frameGetani()->[Product]
    {
        return frame1anni
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

        
        Product( _productImgname: "ll2"),
        Product( _productImgname: "ll1"),
        Product( _productImgname: "ll3"),
        Product( _productImgname: "ll4"),
        Product( _productImgname: "ll5"),
        Product( _productImgname: "ll2"),
        Product( _productImgname: "ll7"),
        Product(_productImgname: "ll1"),
        Product( _productImgname: "ll3"),
        Product( _productImgname: "ll5"),
        Product(  _productImgname: "ll2"),
        Product( _productImgname: "ll1"),
    ]
    private var lovefun2 = [
        Product(_productImgname: "mm1"),
        Product(_productImgname: "mm2"),
        Product(_productImgname: "mm3"),
        Product(_productImgname: "mm4"),
        Product(_productImgname: "mm5"),
        Product(_productImgname: "mm6"),
        Product(_productImgname: "mm1"),
        Product(_productImgname: "mm2"),
        Product(_productImgname: "mm3"),
        Product(_productImgname: "mm4"),
        Product(_productImgname: "mm5"),
        Product(_productImgname: "mm6"),
        Product(_productImgname: "mm1"),
        Product(_productImgname: "mm2"),
        Product(_productImgname: "mm3"),
        Product(_productImgname: "mm4"),
        Product(_productImgname: "mm5"),
        Product(_productImgname: "mm6"),
    ]
    
    private var lovefun3 = [
        Product(_productImgname: "ff1"),
        Product(_productImgname: "ff2"),
        Product(_productImgname: "ff3"),
        Product(_productImgname: "ff4"),
        Product(_productImgname: "ff5"),
        Product(_productImgname: "ff6"),
        Product(_productImgname: "ff1"),
        Product(_productImgname: "ff2"),
        Product(_productImgname: "ff3"),
        Product(_productImgname: "ff4"),
        Product(_productImgname: "ff5"),
        Product(_productImgname: "ff6"),
       
        
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
    
   private let quotesTitleL2love =
    [
        quotesModel(_quatesName: "It only took one look at you to know you were going to be my wife. I thank God every day that I listened to my gut. The rest is history."),
        quotesModel(_quatesName: "Thanks for being my knight in shining armor and having my back. Love you so much"),
        quotesModel(_quatesName: "There are no words I could use to describe the love we share. I’m so incredibly thankful for you"),
        quotesModel(_quatesName: "No matter how dull my days go, your presence makes everything in my life colorful, so grateful to have you in my life"),
        quotesModel(_quatesName: "I cannot be more blessed for having you in my life. I will cherish you in my heart forever and always"),
        quotesModel(_quatesName: "Thanks for being my knight in shining armor and having my back. Love you so much"),
        quotesModel(_quatesName: "I never knew that love could be this beautiful until you came into my life. I love you more than you know"),
        quotesModel(_quatesName: "No matter how dull my days go, your presence makes everything in my life colorful, so grateful to have you in my life"),
        quotesModel(_quatesName: "There are no words I could use to describe the love we share. I’m so incredibly thankful for you"),
        quotesModel(_quatesName: "Thanks for being my knight in shining armor and having my back. Love you so much"),
    ]
    
    private let quotesTitle2Mom =
    [
        quotesModel(_quatesName: "A mother is clothed with strength and dignity, laughs without fear of the future. When she speaks her words are wise and she gives instructions with kindness"),
        quotesModel(_quatesName: "A mother’s happiness is like a beacon, lighting up the future but reflected also on the past in the guise of fond memories."),
        quotesModel(_quatesName: "In the mother’s eyes, her smile, her stroking touch, the child reads the message: ‘You are there"),
        quotesModel(_quatesName: "There is no velvet so soft as a mother’s lap, no rose as lovely as her smile, no path so flowery as that imprinted with her footsteps"),
        quotesModel(_quatesName: "Life began with waking up and loving my mother’s face."),
        quotesModel(_quatesName: "All that I am, or ever hope to be, I owe to my angel mother There is no influence so powerful as that of the mother"),
        quotesModel(_quatesName: "A mother’s happiness is like a beacon, lighting up the future but reflected also on the past in the guise of fond memories."),
        quotesModel(_quatesName: "A mother is always the beginning. She is how things begin.We are born of love; love is our mother"),
        quotesModel(_quatesName: "There is no influence so powerful as that of the mother All that I am, or ever hope to be, I owe to my angel mother"),
        quotesModel(_quatesName: "There is no velvet so soft as a mother’s lap, no rose as lovely as her smile, no path so flowery as that imprinted with her footsteps"),
        quotesModel(_quatesName: "A mother is clothed with strength and dignity, laughs without fear of the future. When she speaks her words are wise and she gives instructions with kindness"),

    ]
    private let quotesTitle2Father =
    [
        quotesModel(_quatesName: "A little girl giggles when she is denied an ice-cream by her mother. She knows daddy will get her some later"),
        quotesModel(_quatesName: "This relationship has something special about it, that makes every father and every daughter in the world speak warmly about it."),
        quotesModel(_quatesName: "When I come home, my daughter will run to the door and give me a big hug, and everything that’s happened that day just melts away"),
        quotesModel(_quatesName: "Daddy, thanks for being my hero, chauffeur, financial support, listener, life mentor, friend, guardian, and simply being there every time I need a hug"),
        quotesModel(_quatesName: "A little girl giggles when she is denied an ice-cream by her mother. She knows daddy will get her some later"),
        quotesModel(_quatesName: "When I come home, my daughter will run to the door and give me a big hug, and everything that’s happened that day just melts away"),
        quotesModel(_quatesName: "This relationship has something special about it, that makes every father and every daughter in the world speak warmly about it."),
        quotesModel(_quatesName: "A little girl giggles when she is denied an ice-cream by her mother. She knows daddy will get her some later"),
        quotesModel(_quatesName: "Daddy, thanks for being my hero, chauffeur, financial support, listener, life mentor, friend, guardian, and simply being there every time I need a hug"),
        quotesModel(_quatesName: "A little girl giggles when she is denied an ice-cream by her mother. She knows daddy will get her some later"),

    ]
    private let quotesTitle2Wife =
    [
        quotesModel(_quatesName: "You are my paradise, and I am the luckiest to be stranded here with you When you are so happy being with your wife that you want no one else in that space except her."),
        quotesModel(_quatesName: "I became blinded by love after witnessing how beautiful you are both inside and out A person would look for a partner who possesses both outer and inner beauty."),
        quotesModel(_quatesName: "Throughout your difficult times, you seek peace. When you discover that peace in your partner, you feel thankful for the same"),
        quotesModel(_quatesName: "A successful marriage expects one to fall in love with the same person again and again. This is exactly what is happening to me"),
        quotesModel(_quatesName: "Time has been my biggest enemy when it comes to loving you because it is too short to love you in one lifetime"),
        quotesModel(_quatesName: "A successful marriage expects one to fall in love with the same person again and again. This is exactly what is happening to me"),
        quotesModel(_quatesName: "Time has been my biggest enemy when it comes to loving you because it is too short to love you in one lifetime"),
        quotesModel(_quatesName: "Throughout your difficult times, you seek peace. When you discover that peace in your partner, you feel thankful for the same"),
        quotesModel(_quatesName: "Time has been my biggest enemy when it comes to loving you because it is too short to love you in one lifetime"),
        quotesModel(_quatesName: "I became blinded by love after witnessing how beautiful you are both inside and out A person would look for a partner who possesses both outer and inner beauty.")

    ]
    
    func quotesTitle2GetLove()->[quotesModel]
    {
        return quotesTitleL2love
    }
    func quotesTitle2GetMom()->[quotesModel]
    {
        return quotesTitle2Mom
    }
    func quotesTitle2GetFather()->[quotesModel]
    {
        return quotesTitle2Father
    }
    func quotesTitle2GetWife()->[quotesModel]
    {
        return quotesTitle2Wife
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
