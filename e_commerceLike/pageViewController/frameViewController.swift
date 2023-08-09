//
//  frameViewController.swift
//  e_commerceLike
//
//  Created by Rajeev on 11/05/23.
//

import UIKit

class frameViewController: UIViewController {

    
    @IBOutlet var frameCollectionView:UICollectionView!
    static var framee = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()
        frameCollectionView.delegate = self
        frameCollectionView.dataSource = self

    }
    

    

}
extension frameViewController:UICollectionViewDelegate,UICollectionViewDataSource
{
   
    
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           // return products.count
            return frameViewController.framee.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            if let cell = frameCollectionView.dequeueReusableCell(withReuseIdentifier: "frameCell",for:indexPath) as? frameCell
            {
              let fr = frameViewController.framee[indexPath.row]
                cell.frameSetUpCell(_cards: fr)
                cell.layer.cornerRadius = 15
                return cell
            }
            return frameCell()
        }
        
       
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 5
        }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return 5
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            
            return CGSize(width: frameCollectionView.frame.size.width/3-5, height: frameCollectionView.frame.size.height/3-5)
        }
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            let fddd = DataService.instance.frameGetani()[indexPath.row]
            frameAddViewController.fImage = fddd.productImgName
            performSegue(withIdentifier: "addFrame", sender: AnyObject.self)
        }
    }


