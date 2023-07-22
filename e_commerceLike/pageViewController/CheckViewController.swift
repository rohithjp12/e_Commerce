//
//  CheckViewController.swift
//  e_commerceLike
//
//  Created by Rajeev on 22/07/23.
//

import UIKit

class CheckViewController: UIViewController ,UINavigationControllerDelegate{

    
    @IBOutlet var downloadBtn:UIButton!
    @IBOutlet var imageViewW:UIImageView!
    static var imag:String?
    var filteredImage: UIImage?
    var imagePicker: UIImagePickerController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageViewW.layer.cornerRadius =  25
        downloadBtn.layer.cornerRadius = 20
        imageViewW.image = UIImage(named:CheckViewController.imag!)
        if imageViewW.image == nil {
            imageViewW.image = filteredImage!
        }
        
    }
    @objc func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            UIImageWriteToSavedPhotosAlbum(pickedImage, self, #selector(image(_:didFinishSavingWithError:contextInfo:)), nil)
            
            dismiss(animated: true, completion: nil)
        }
    }
    
    @objc func image (_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        if let error = error {
            // we got back an error!
            let ac = UIAlertController(title: "Save error", message: error.localizedDescription, preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
        } else {
            let ac = UIAlertController(title: "Saved!", message: "Your altered image has been saved to your photos.", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
        }
    }
    @IBAction func savebtn(_ sender: Any) {
        
        if let pickedImage = imageViewW.image {
            UIImageWriteToSavedPhotosAlbum(pickedImage, self, #selector(image(_:didFinishSavingWithError:contextInfo:)), nil)
        }

        
    }
    

    

}
