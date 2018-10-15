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

    
    let urlYolu = "http://www.math.uwaterloo.ca/~hdesterc/websiteW/personal/pictures/argentina2003/200311-set8/images/200311-set8_6_400x600.jpg"

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

