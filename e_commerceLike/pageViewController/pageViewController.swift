//
//  pageViewController.swift
//  e_commerceLike
//
//  Created by Rajeev on 11/05/23.
//

import UIKit
import LZViewPager

class pageViewController: UIViewController,LZViewPagerDelegate,LZViewPagerDataSource

{
    
    
    @IBOutlet weak var ViewPager: LZViewPager!
    private var subControllers:[UIViewController] = []
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewPagerProperties()

    }
 
    func viewPagerProperties()
    {
        
        ViewPager.delegate = self
        ViewPager.dataSource = self
        ViewPager.hostController = self
        
        
        let vc1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "girfViewController") as! girfViewController
        
        let vc2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "cardViewController") as! cardViewController
        
        let vc3 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "QuotesViewController") as! QuotesViewController
        
        let vc4 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "frameViewController") as! frameViewController
       
        vc1.title = "GIF"
        vc2.title = "Card"
        vc3.title = "Quotes"
        vc4.title = "Frame"
        
        
        subControllers = [vc1,vc2,vc3,vc4]
        ViewPager.reload()
    }
    func numberOfItems() -> Int {
        return self.subControllers.count
    }
    
    func controller(at index: Int) -> UIViewController {
        return subControllers[index]
    }
    func button(at index: Int) -> UIButton {
        let button = UIButton()
        button.setTitleColor(#colorLiteral(red:0.2549019754,green:0.2745098174,blue: 0.3019607961,alpha: 1), for: .normal)
      //   button.setTitleColor(#colorLiteral(red:1,green:1,blue:1,alpha:1), for: .selected)
        button.setTitleColor(.red, for: .selected)
         button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.backgroundColor = .magenta
      //  button.setImage(UIImage(named: "c1"), for: .normal)
         
         return button
    }
    func colorForIndicator(at index:Int) -> UIColor
    {
        return .blue
    }
}

