
//  frameAddViewController.swift
//  e_commerceLike
//
//  Created by Rajeev on 09/08/23.
//



import UIKit

class frameAddViewController: UIViewController {

    @IBOutlet var chooseBuuton: UIButton!
    @IBOutlet weak var framelowerView: UIView!
    
    @IBOutlet var imageInternal:UIImageView!
    @IBOutlet var imageExternal:UIImageView!
    static var fImage:String?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        imageExternal.image = UIImage(named: frameAddViewController.fImage!)
        framelowerView.layer.cornerRadius = 34
        
        //  THIS LINE ENABLE FOR ON IMAGE TAP GESTURE
       // let tapGesture = UITapGestureRecognizer()
       //         tapGesture.addTarget( self,action:#selector(frameAddViewController.openGallery(tapGesture:)))
        imageInternal.isUserInteractionEnabled = true
     //   imageInternal.addGestureRecognizer(tapGesture)
        imageExternal.layer.cornerRadius = 20
        imageExternal.layer.borderColor = UIColor.white.cgColor
        imageExternal.layer.borderWidth = 10
    }
    
    @IBAction func btnClicked() {

        let imageController = UIImagePickerController()
                imageController.delegate = self
                imageController.sourceType = UIImagePickerController.SourceType.photoLibrary
                self.present(imageController,animated: true,completion: nil)
      }
    @objc func openGallery(tapGesture: UITapGestureRecognizer)
        {
            self.setupImagePicker()
        }
    
    
    func resizeImage(image: UIImage, targetSize: CGSize) -> UIImage? {
        let size = image.size
        
        let widthRatio  = targetSize.width  / size.width
        let heightRatio = targetSize.height / size.height
        var newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
        } else {
            newSize = CGSize(width: size.width * widthRatio, height: size.height * widthRatio)
        }
        let rect = CGRect(origin: .zero, size: newSize)
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage
    }
  }
    
extension frameAddViewController:UIImagePickerControllerDelegate,UINavigationControllerDelegate
{
    
    func setupImagePicker()
    {
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum)
        {
            let imagePicker = UIImagePickerController()
            imagePicker.sourceType = .savedPhotosAlbum
            imagePicker.delegate = self
            imagePicker.allowsEditing = true
            self.present(imagePicker,animated: true,completion: nil)
        }
    }


    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        imageInternal.image = image
        self.dismiss(animated: true,completion: nil)
        resizeImage(image: imageInternal.image!, targetSize: CGSizeMake(200.0, 200.0))
    }
    
    }


