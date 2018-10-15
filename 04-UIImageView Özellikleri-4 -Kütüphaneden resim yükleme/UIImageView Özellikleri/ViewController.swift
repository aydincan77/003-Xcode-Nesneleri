//
//  ViewController.swift
//  UIImageView Özellikleri
//
//  Created by Aydın Can on 22.08.2018.
//  Copyright © 2018 CAN Soft. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var resimNesnesi: UIImageView!
    
    let resimSeçici = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    @IBAction func ResimSeç(_ sender: UIButton) {
        resimSeçici.delegate = self
        resimSeçici.sourceType = .photoLibrary
        resimSeçici.allowsEditing = true
        present(resimSeçici, animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let resim = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            resimNesnesi.image = resim
            resimNesnesi.contentMode = .scaleAspectFit
            
        }
        dismiss(animated: true, completion: nil)
        
    }
    
    
  
}

