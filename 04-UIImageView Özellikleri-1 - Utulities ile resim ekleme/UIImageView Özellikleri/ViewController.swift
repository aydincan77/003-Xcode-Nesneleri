//
//  ViewController.swift
//  UIImageView Özellikleri
//
//  Created by Aydın Can on 22.08.2018.
//  Copyright © 2018 CAN Soft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resimImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        resimImg.layer.cornerRadius = resimImg.frame.width / 2
        
    }

  
}

