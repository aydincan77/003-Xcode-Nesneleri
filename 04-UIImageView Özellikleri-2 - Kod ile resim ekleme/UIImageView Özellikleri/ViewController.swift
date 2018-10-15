//
//  ViewController.swift
//  UIImageView Özellikleri
//
//  Created by Aydın Can on 22.08.2018.
//  Copyright © 2018 CAN Soft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 let resim = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        resim.image = UIImage(named: "kullanıcı.png")
        resim.backgroundColor = UIColor.orange
        //resim.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        resim.frame = CGRect(x: (view.frame.width / 2) - 100, y: 100, width: 200, height: 200)
        resim.layer.cornerRadius = resim.frame.width / 2
        
        view.addSubview(resim)
        
        print(view.frame.standardized)
        print(resim.frame.standardized)
    }

}

