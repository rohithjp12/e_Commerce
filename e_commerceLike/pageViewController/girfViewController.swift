//



import UIKit

class girfViewController: UIViewController {
    
    
    static var a = [Product]()
    static var b = [Product]()
    @IBOutlet weak var productsCollection: UICollectionView!
    private(set) public var products = [Product]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.delegate = self
        productsCollection.dataSource = self
      
        
    }
    
//    func Products(_Category:Category)
//    {
//      // products = DataService.instance.getProducts(Title: _Category.title)
//        girfViewController.a = DataService.instance.getProducts(Title: _Category.title)
//    }


}
extension girfViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
       // return products.count
        return girfViewController.a.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        if let cell = productsCollection.dequeueReusableCell(withReuseIdentifier: "productCell",for:indexPath) as? productCell
        {
            let pr = girfViewController.a[indexPath.row]
            cell.GIFsetUpCell(_products: pr)
           // print("my photo  \(pr.productImgName))")
            cell.layer.cornerRadius = 15
            return cell
        }
        return productCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: collectionView.frame.size.width/3-5, height: collectionView.frame.size.height/3-5)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        
        let categoryy = DataService.instance.getCategoires()[indexPath.row]
        let gif1 = DataService.instance.getcat1()[indexPath.row]
        GifSelectedViewController.gifImage = gif1.productImgName
        
//        let gif2 = DataService.instance.getCat2()[indexPath.row]
//        GifSelectedViewController.gifImage = gif2.productImgName
//
//        let gif3 = DataService.instance.getCat3()[indexPath.row]
//        GifSelectedViewController.gifImage = gif3.productImgName
//
//        let gif4 = DataService.instance.getCat4()[indexPath.row]
//        GifSelectedViewController.gifImage = gif4.productImgName
//
        
        performSegue(withIdentifier: "gifSelect", sender: categoryy)
    }

    
    
}
// let category = DataService.instance.getCategoires()[indexPath.row]
 //var check = category.title
//  print("my checking \(check)")
//        switch check
//        {
//            case "
//        }
