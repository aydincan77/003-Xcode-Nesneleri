//
//  ViewController.swift
//  UIButton Özellikler
//
//  Created by Aydın Can on 11.06.2018.
//  Copyright © 2018 CAN Soft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var butonBtn1: UIButton!
    @IBOutlet weak var butonBtn2: UIButton!
    @IBOutlet weak var butonBtn3: UIButton!
    @IBOutlet weak var butonBtn4: UIButton!
    @IBOutlet weak var butonBtn5: UIButton!
    @IBOutlet weak var butonBtn6: UIButton!
    @IBOutlet weak var labelLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        butonBtn2.frame = CGRect(x: 16, y: 150, width: 343, height: 80)
        
        butonBtn2.layer.backgroundColor = UIColor.brown.cgColor
        butonBtn2.layer.cornerRadius = 10
        butonBtn2.layer.borderColor = UIColor.black.cgColor
        butonBtn2.layer.borderWidth = 1
        butonBtn2.layer.shadowOpacity = 1.0
        butonBtn2.layer.shadowColor = UIColor.cyan.cgColor
        butonBtn2.layer.shadowOffset = CGSize(width: 8.0, height: 8.0)
        
        butonBtn3.backgroundColor = UIColor.green
        butonBtn3.titleLabel?.backgroundColor = UIColor.orange
        butonBtn3.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        //butonBtn3.titleLabel?.font =  UIFont(name: "Chalkduster", size: 20)
        butonBtn3.titleLabel?.lineBreakMode = .byTruncatingMiddle
        butonBtn3.titleLabel?.numberOfLines = 0
        butonBtn3.titleLabel?.textAlignment = .center
        butonBtn3.titleLabel?.layer.shadowOffset = CGSize(width: 10, height: 10)
        butonBtn3.titleLabel?.layer.shadowOpacity = 1.0
        butonBtn3.titleLabel?.layer.shadowColor = UIColor.red.cgColor
        butonBtn3.transform = CGAffineTransform(rotationAngle: 0/90*(CGFloat.pi/2))
        butonBtn3.titleLabel?.transform = CGAffineTransform(rotationAngle: 0/90*(CGFloat.pi/2))
        
        butonBtn4.setTitle("Butonum", for: .normal)
        butonBtn4.setTitle("Butonuma basıldı", for: .highlighted)
        butonBtn4.setBackgroundImage(UIImage(named: "a.jpg"), for: .normal)
        butonBtn4.setTitleColor(UIColor.white, for: UIControlState.normal)
        butonBtn4.setTitleColor(UIColor.black, for: UIControlState.highlighted)
        butonBtn4.layer.cornerRadius = 20
        butonBtn4.layer.masksToBounds = true
        

        //butonBtn5.isHidden = true
        //butonBtn5.isEnabled = false
        //butonBtn5.isHighlighted = true
 
        //butonBtn5 Attributed Text tanımlayalım
         let attributedTextDeneme = NSMutableAttributedString(string: "Buton 5")
        
        //Yazının altına çizilecek çizgiyi belirler
        //attributedTextDeneme.addAttribute(NSAttributedStringKey.underlineStyle, value: 1, range: NSRange(location: 0, length: 5))
    
        //Yazı arka plan rengini belirler
        //attributedTextDeneme.addAttribute(NSAttributedStringKey.backgroundColor, value: UIColor.yellow, range: NSRange(location: 0, length: 5))
        
        //Yazı Stroke rengini belirler
        attributedTextDeneme.addAttribute(NSAttributedStringKey.strokeColor, value: UIColor.red, range: NSRange(location: 0, length: 5))
        
        //Yazı Stroke uzunluğunu belirler
        attributedTextDeneme.addAttribute(NSAttributedStringKey.strokeWidth, value: 5, range: NSRange(location: 0, length: 5))
        
        //Yazı fontunu ve büyüklüğünü belirler
        attributedTextDeneme.addAttribute(NSAttributedStringKey.font, value: UIFont(name: "Farah", size: 30) ?? (name: "Helvetica", size: 20), range: NSRange(location: 0, length: 5))

        // Tanımlamayı butonBtn5'e atar
        butonBtn5.setAttributedTitle(attributedTextDeneme, for: .normal)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func denemeBtn(_ sender: UIButton) {
        labelLbl.text = "Butona Basıldı"
    }
    

}


