//
//  GifSelectedViewController.swift
//  e_commerceLike
//
//  Created by Rajeev on 09/08/23.
//

import UIKit

class GifSelectedViewController: UIViewController {

    
    @IBOutlet var GifImage:UIImageView!
    static var gifImage:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        GifImage.layer.cornerRadius = 15
        GifImage.layer.borderWidth = 5
        GifImage.layer.borderColor = UIColor.white.cgColor
        GifImage.image = UIImage.gifImageWithName(GifSelectedViewController.gifImage!)
    }
    

    

}
