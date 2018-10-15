//
//  ViewController.swift
//  UIImageView Özellikleri
//
//  Created by Aydın Can on 22.08.2018.
//  Copyright © 2018 CAN Soft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resimAnimasyonImg: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resimAnimasyonImg.image = UIImage(named: "Simpson-1.png")
        
        resimAnimasyonImg.animationImages =
            [ UIImage(named: "Simpson-1.png"),
              UIImage(named: "Simpson-2.png"),
              UIImage(named: "Simpson-3.png"),
              UIImage(named: "Simpson-4.png"),
              ] as? [UIImage]
        resimAnimasyonImg.animationDuration = 5
        resimAnimasyonImg.animationRepeatCount = 3
        //resimAnimasyonImg.startAnimating()
    }
    
    
    @IBAction func başlaBtn(_ sender: UIButton) {
        resimAnimasyonImg.startAnimating()
    }
    
    @IBAction func durdurBtn(_ sender: UIButton) {
        resimAnimasyonImg.stopAnimating()
        resimAnimasyonImg.image = UIImage(named: "Simpson-1.png")
    }
}

