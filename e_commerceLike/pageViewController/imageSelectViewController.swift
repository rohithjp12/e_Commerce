//
//  imageSelectViewController.swift
//  e_commerceLike
//
//  Created by Rajeev on 27/06/23.
//

import UIKit

class imageSelectViewController: UIViewController {

    
    @IBOutlet weak var share: UIButton!
    @IBOutlet weak var Save: UIButton!
    
    static var ab = [Product]()
    
    @IBOutlet weak var selectCollectionView: UICollectionView!
    
    @IBOutlet weak var mypageController: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mypageController.currentPage = 0
        mypageController.numberOfPages = imageSelectViewController.ab.count
     //   print("my  format     \(imageSelectViewController.ab)")
       
        share.layer.cornerRadius = 15
        Save.layer.cornerRadius = 15
    }
    
    @IBAction func saveaction(_ sender: UIButton) {
       // func showAlert() {
              let alert = UIAlertController(title: "Save Completed", message: "save image successful", preferredStyle: .alert)
                
              alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: { _ in
                  //Cancel Action
              }))

        
              DispatchQueue.main.async {
                  self.present(alert, animated: false, completion: nil)
              }
                
          }
    
    
    @IBAction func ShareAction(_ sender: UIButton) {
        
        
        let alert = UIAlertController(title: "Share", message: "<- ->", preferredStyle: .alert)
            let action = UIAlertAction(title: "send", style: .cancel, handler: nil)

           //color
           alert.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = UIColor.systemPink
            alert.view.tintColor = UIColor.white
        
        
            //Add imageview to alert
            let imgViewTitle = UIImageView(frame: CGRect(x: 25, y: 25, width: 60, height: 60))
            imgViewTitle.image = UIImage(named:"gmail")
         
             let img = UIImageView(frame:CGRect(x: 190, y: 25, width: 60, height: 60))
             img.image = UIImage(named: "whatsapp")
        
        imgViewTitle.layer.cornerRadius = 50
            alert.view.addSubview(imgViewTitle)
            alert.view.addSubview(img)

            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        
        
        
    }
    
    
}
extension imageSelectViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageSelectViewController.ab.count
    }

    func collectionView(_ collectionVeiw: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = selectCollectionView.dequeueReusableCell(withReuseIdentifier: "selectedCell", for: indexPath) as! imageSelectedCollectionViewCell
        let ba = imageSelectViewController.ab[indexPath.row]
        let ds = DataService.instance.getcat1()[indexPath.row]
       // print("my photo     \(ba)")
        cell.imageSelectSetupCell(_cate: ds)
        cell.layer.cornerRadius = 50
        return cell
    }


}
