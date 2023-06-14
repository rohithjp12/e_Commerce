//
//  ViewController.swift
//  e_commerceLike
//
//  Created by Rajeev on 05/05/23.
//

import UIKit

class CategoryVc: UIViewController{
  
    
    
    var a = ["p2","p1","p3","p4","p5"]
    
    @IBOutlet weak var sideBarButtonItem: UIBarButtonItem!
    
    @IBOutlet weak var categoryColllectionn2: UICollectionView!
    @IBOutlet weak var categoryColllectionn: UICollectionView!
    @IBOutlet weak var categoryColllectionn3: UICollectionView!
    @IBOutlet weak var mainCollectionView: UICollectionView!
    @IBOutlet weak var categoryCollection4: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryColllectionn.delegate = self
        categoryColllectionn.dataSource = self
        categoryColllectionn2.delegate = self
        categoryColllectionn2.dataSource = self
        categoryColllectionn3.delegate = self
        categoryColllectionn3.dataSource = self
        mainCollectionView.dataSource = self
        mainCollectionView.delegate = self
        categoryCollection4.delegate = self
        categoryCollection4.dataSource = self
       
        
        
    }


}
extension CategoryVc:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    //******************** NUMBER OF ITEM IN SECTION **************************//

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.categoryColllectionn
        {
            return DataService.instance.getCategoires().count
        }
        else if(collectionView == self.categoryColllectionn2)
        {
            return Dataservice2.instance2.getCategoires2().count
        }
        else if(collectionView == self.categoryColllectionn3)
        {
            return Dataservice3.instance3.getCategoires3().count
        }
        else if(collectionView == self.categoryCollection4)
        {
            return Dataservice4.instance4.getCategories4().count
        }
        else
        {
            return a.count
        }
    }
    
    //********************CELL FOR ROW AT ITEM **************************//

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.categoryColllectionn
        {
            if let cell = categoryColllectionn.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as?
                CategoryCell
            {
                let category_indexpath = DataService.instance.getCategoires()[indexPath.row]
                cell.setupCell(_Category: category_indexpath)
                cell.categoryimage1.layer.cornerRadius = 20
                cell.layer.borderWidth = 2
                cell.layer.borderColor = UIColor.white.cgColor
                
                return cell
            }
            
            return CategoryCell()
            
            
        }
        else if(collectionView == self.categoryColllectionn2)
        {
            if let cell2 = categoryColllectionn2.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as? CategoryCell
            {
                let category_indexpath2 = Dataservice2.instance2.getCategoires2()[indexPath.row]
                // cell2.setupCell(_Category: category_indexpath2)
                cell2.setupCell2(_Category2: category_indexpath2)
                cell2.categoryImage2.layer.cornerRadius = 15
                cell2.layer.borderWidth = 2
                cell2.layer.borderColor = UIColor.white.cgColor
                return cell2
            }
            return CategoryCell()
        }
        else if(collectionView == self.categoryColllectionn3)
        {
            if let cell3 = categoryColllectionn3.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as? CategoryCell
            {
                let category_indexpath3 = Dataservice3.instance3.getCategoires3()[indexPath.row]
                cell3.setupCell3(_Category3: category_indexpath3)
                cell3.categoryyimage3.layer.cornerRadius = 15
                cell3.layer.borderWidth = 2
                cell3.layer.borderColor = UIColor.white.cgColor
                return cell3
            }
            return CategoryCell()
        }
        
        // return CategoryCell()
        else if (collectionView == self.categoryCollection4)
        {
            if  let cell5 = categoryCollection4.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as? CategoryCell
            {
                let category_indexpath44 = Dataservice4.instance4.getCategories4()[indexPath.row]
                //  cell5.setupCell3(_Category3: category_indexpath44)
                cell5.setupCell4(_Category4: category_indexpath44)
                cell5.cateeoogooryImage4.layer.cornerRadius = 15
                cell5.layer.borderColor = UIColor.white.cgColor
                cell5.layer.borderWidth = 2
                
                return cell5
            }
            return CategoryCell()
        }
        else
        {
            let cell4 = mainCollectionView.dequeueReusableCell(withReuseIdentifier: "mainVc", for: indexPath) as? CategoryCell
            cell4?.mainImage.image = UIImage(named: a[indexPath.row])
            cell4?.layer.cornerRadius = 20
            cell4?.layer.borderColor = UIColor.white.cgColor
            cell4?.layer.borderWidth = 5
            return cell4!
        }
    }
    //********************DID SELECT METHOD **************************//
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == self.categoryColllectionn
        {
            let category = DataService.instance.getCategoires()[indexPath.row]
            let cardCategory = DataService.instance.getCategoires()[indexPath.row]
            let quotesCategory = DataService.instance.getCategoires()[indexPath.row]
            let c = cardCategory.title
            let g = category.title
            let q = quotesCategory.title
            
            switch g
            {
            case "popular1":
                girfViewController.a = DataService.instance.getcat1()
            case "popular2":
                girfViewController.a = DataService.instance.getCat2()
            case "popular3":
                girfViewController.a = DataService.instance.getCat3()
            case "popular4":
                girfViewController.a = DataService.instance.getCat4()
            case "popular5":
                girfViewController.a = DataService.instance.getcat5()
            default:
                print("abc")
            }
            switch c
            {
            case "popular1":
                cardViewController.card = DataService.instance.cardAnniversaryGet()
            case "popular2":
                cardViewController.card = DataService.instance.cardGoodNightGet()
            case "popular3":
                cardViewController.card = DataService.instance.cardLoveGet()
            case "popular4":
                cardViewController.card = DataService.instance.cardtMissYou()
            case "popular5":
                cardViewController.card = DataService.instance.cardBirthday()
                
            default:
                print("switch Card Cell error")
            }
            
            switch q
            {
            case "popular1":
                QuotesViewController.quotes = DataService.instance.QuotesAnniversayGet()
            case "popular2":
                QuotesViewController.quotes = DataService.instance.QuotesGoodNightGet()
                
            default:
                print("Switch quotes Cell error")
                
            }
            performSegue(withIdentifier: "TopProductVc", sender: category)
            //
            //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            //        if let productVC = segue.destination as? productVc
            //        {
            //           // productVC.Products(_Category: sender as!  Category)
            //            productVC.Products(_Category: sender as! Category)
            //        }}
            func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
            {
                return 20
            }
            func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
            {
                return 20
            }
        }
        else if (collectionView == self.categoryColllectionn2)
        {
            
            
           // let categoryyy = DataService2.instance2.getCategoires2()[indexPath.row]
            let category1 = Dataservice2.instance2.getCategoires2()[indexPath.row]
            let l1 = category1.title2
            
            let category2 = Dataservice2.instance2.getCategoires2()[indexPath.row]
            let l2 = category2.title2
            
            let category3 = Dataservice2.instance2.getCategoires2()[indexPath.row]
            let l3 = category3.title2
            
            let category4 = Dataservice2.instance2.getCategoires2()[indexPath.row]
            let l4 = category4.title2
            
            
            switch l1
            {
            case "love1":
                girfViewController.a = Dataservice2.instance2.loveGIF()
            case "love2":
                girfViewController.a = Dataservice2.instance2.momGIF()
            case "love3":
                girfViewController.a = Dataservice2.instance2.fatherGIF()
            case "love4":
                girfViewController.a = Dataservice2.instance2.wifeGIF()
                
                
            default:
                print("hii")
            }
          switch l1
            {
          case "love1":
              cardViewController.card = Dataservice2.instance2.cardlove()
          case "love2":
              cardViewController.card = Dataservice2.instance2.cardmom()
          case "love3":
              cardViewController.card = Dataservice2.instance2.cardfather()
          case "love4":
              cardViewController.card = Dataservice2.instance2.cardWife()
              
          default:
              print("love__Card")
          }
            
            performSegue(withIdentifier: "TopProductVc", sender: category1)
            //
            //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            //        if let productVC = segue.destination as? productVc
            //        {
            //           // productVC.Products(_Category: sender as!  Category)
            //            productVC.Products(_Category: sender as! Category)
            //        }}
            func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
            {
                return 20
            }
            func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
            {
                return 20
            }
        }
    }
}
