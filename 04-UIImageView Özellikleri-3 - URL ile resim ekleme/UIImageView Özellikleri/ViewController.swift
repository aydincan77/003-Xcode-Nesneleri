//
//  ViewController.swift
//  UIImageView Özellikleri
//
//  Created by Aydın Can on 22.08.2018.
//  Copyright © 2018 CAN Soft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var URLYükle: UIImageView!

    let urlYolu = "https://images.pexels.com/photos/1115090/pexels-photo-1115090.jpeg"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        //URL'den resim yükleme
        if let url = URL(string: urlYolu) {
            do {
                let data = try Data(contentsOf: url)
                self.URLYükle.image = UIImage(data: data)
                self.URLYükle.contentMode = .scaleAspectFit
            } catch let err {
                print(" Hata Var : \(err.localizedDescription)")
            }
        }
        
        
    }

}

