//
//  cardViewController.swift
//  e_commerceLike
//
//  Created by Rajeev on 11/05/23.
//

import UIKit

class cardViewController: UIViewController {

    static var card = [Product]()
    @IBOutlet weak var cardCollectionView:UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        cardCollectionView.delegate = self
        cardCollectionView.dataSource = self
    }

}
extension cardViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       // return products.count
        return cardViewController.card.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = cardCollectionView.dequeueReusableCell(withReuseIdentifier: "cardCell",for:indexPath) as? cardCell
        {
//            let products_indexPath = products[indexPath.row]
//            cell.setUpCell(_products: products_indexPath)
//            cell.productImg.layer.cornerRadius = 20
//            return cell
            
            let cR = cardViewController.card[indexPath.row]
            cell.cardSetUpCell(_cards: cR)
           // print("my photo  \(cR.productImgName))")
            cell.layer.cornerRadius = 15
            return cell
        }
        return cardCell()
    }
    
   
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.size.width/3-5, height: collectionView.frame.size.height/3-5)
    }
    
}
