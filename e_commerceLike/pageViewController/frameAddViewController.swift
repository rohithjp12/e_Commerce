//
//  frameAddViewController.swift
//  e_commerceLike
//
//  Created by Rajeev on 09/08/23.
//

import UIKit

class frameAddViewController: UIViewController {

    
    
    @IBOutlet weak var framelowerView: UIView!
    
   // @IBOutlet var imageInternal:UIImageView!
    @IBOutlet var imageExternal:UIImageView!
    static var fImage:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        imageExternal.image = UIImage(named: frameAddViewController.fImage!)
        framelowerView.layer.cornerRadius = 34
    }
    

    

}
