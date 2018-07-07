//
//  ViewController.swift
//  Label özellikleri
//
//  Created by Aydın Can on 30.05.2018.
//  Copyright © 2018 CAN Soft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelLbl1: UILabel!
    @IBOutlet weak var labelLbl2: UILabel!
    @IBOutlet weak var labelLbl3: UILabel!
    @IBOutlet weak var labelLbl4: UILabel!
    @IBOutlet weak var labelLbl5: UILabel!
    @IBOutlet weak var labelLbl6: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // LABEL ÖZELLİKLERİNE ULAŞMA VE ATAMA
        labelLbl2.text = "Merhaba Dünya! Merhaba Dünya!, Merhaba Dünya!"
        labelLbl2.text = """
        deneme 1
        
        deneme 2
        """
        labelLbl2.textColor = UIColor.magenta
        labelLbl2.font = UIFont (name: "Chalkduster", size: 20)
        labelLbl2.shadowColor = UIColor.brown
        labelLbl2.shadowOffset = CGSize(width: 0, height: 0)
        labelLbl2.baselineAdjustment = .alignCenters
        labelLbl2.textAlignment = .center
        labelLbl2.lineBreakMode = NSLineBreakMode.byTruncatingTail
        labelLbl2.numberOfLines = 0
        labelLbl2.highlightedTextColor = UIColor.green
        labelLbl2.isHighlighted = false
        labelLbl2.backgroundColor = UIColor.cyan
        labelLbl2.frame = CGRect(x: 10, y: 150, width: view.frame.size.width * 0.95, height: 100)
        print(view.frame.size.width * 0.5)
        labelLbl2.isHidden = false
        
        
        // SINIRLARI ÇİZMEK VE ARKA PLANA RESİM EKLEMEK
        labelLbl3.textColor = UIColor.red
        labelLbl3.layer.borderWidth = 5.0
        labelLbl3.layer.borderColor = UIColor.blue.cgColor
        labelLbl3.layer.cornerRadius = 10
        labelLbl3.layer.masksToBounds = true
        labelLbl3.backgroundColor = UIColor.red
        labelLbl3.backgroundColor = UIColor(patternImage: UIImage(named: "desen.jpg")!)
        
        
        // AÇILI LABEL OLUŞTURMAK
        // FORMÜL : İSTEDİĞİNİZ AÇI/90 * (CGFloat.pi/2)
        // ÖRNEK 10 DERECELİK AÇI OLSUN
        // KURULACAK FORMÜL -> 10/90 * (CGFloat.pi/2)
        // SONUÇ = 1/9 * (CGFloat.pi/2)
        
        labelLbl4.transform = CGAffineTransform(rotationAngle: 0*(CGFloat.pi/2)) // 0°
        //labelLbl4.transform = CGAffineTransform(rotationAngle: 0) // 0°
        //labelLbl4.transform = CGAffineTransform(rotationAngle: 1/9*(CGFloat.pi/2)) // saat yönünde 10°
        //labelLbl4.transform = CGAffineTransform(rotationAngle: 2/9*(CGFloat.pi/2)) // saat yönünde 20°
        //labelLbl4.transform = CGAffineTransform(rotationAngle: 3/9*(CGFloat.pi/2)) // saat yönünde 30°
        //labelLbl4.transform = CGAffineTransform(rotationAngle: 4/9*(CGFloat.pi/2)) // saat yönünde 40°
        //labelLbl4.transform = CGAffineTransform(rotationAngle: 5/9*(CGFloat.pi/2)) // saat yönünde 50°
        //labelLbl4.transform = CGAffineTransform(rotationAngle: 6/9*(CGFloat.pi/2)) // saat yönünde 60°
        //labelLbl4.transform = CGAffineTransform(rotationAngle: 7/9*(CGFloat.pi/2)) // saat yönünde 70°
        //labelLbl4.transform = CGAffineTransform(rotationAngle: 8/9*(CGFloat.pi/2)) // saat yönünde 80°
        //labelLbl4.transform = CGAffineTransform(rotationAngle: 9/9*(CGFloat.pi/2)) // saat yönünde 90°
        
        //labelLbl4.transform = CGAffineTransform(rotationAngle: 1/2*(CGFloat.pi/2)) // saat yönünde 45°
        //labelLbl4.transform = CGAffineTransform(rotationAngle: 1.5*(CGFloat.pi/2)) // saat yönünde 135°
        //labelLbl4.transform = CGAffineTransform(rotationAngle: 2*(CGFloat.pi/2)) // saat yönünde 180°
        //labelLbl4.transform = CGAffineTransform(rotationAngle: 2.5*(CGFloat.pi/2)) // saat yönünde 225°
        //labelLbl4.transform = CGAffineTransform(rotationAngle: 3*(CGFloat.pi/2)) // saat yönünde 270°
        //labelLbl4.transform = CGAffineTransform(rotationAngle: 3.5*(CGFloat.pi/2)) // saat yönünde 315°
        //labelLbl4.transform = CGAffineTransform(rotationAngle: 4*(CGFloat.pi/2)) // saat yönünde 360°
        

        // ATTRİBUTEDTEXT TANIMLAMA KODU
        let attributedTextDeneme = NSMutableAttributedString(string: "Attributed Deneme")
        
        //Yazı rengini belirler
        attributedTextDeneme.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor.blue, range: NSRange(location: 0, length: 10))
        
        //Yazının altına çizilecek çizgiyi belirler
        attributedTextDeneme.addAttribute(NSAttributedStringKey.underlineStyle, value: 1, range: NSRange(location: 0, length: 10))
        
        //Yazının altına çizilecek çizgiyi belirler - başka bir versiyon
        //attributedTextDeneme.addAttribute(NSAttributedStringKey.underlineStyle, value: NSUnderlineStyle.styleSingle.rawValue, range: NSRange(location: 0, length: attributedStr.length))
        
        //Yazının altına çizilecek çizginin rengini belirler
        attributedTextDeneme.addAttribute(NSAttributedStringKey.underlineColor, value: UIColor.green, range: NSRange(location: 0, length: 10))
        
        //Yazı fontunu belirler
        attributedTextDeneme.addAttribute(NSAttributedStringKey.font, value: UIFont (name: "Chalkduster", size: 30) ?? (name: "Helvetica", size: 20), range: NSRange(location: 11, length: 6))
        
        //Yazı font büyüklüğünü belirler
        attributedTextDeneme.addAttribute(NSAttributedStringKey.font, value: UIFont.boldSystemFont(ofSize: 30.0), range: NSRange(location: 1, length: 8))
        //Yazı arka plan rengini belirler
        attributedTextDeneme.addAttribute(NSAttributedStringKey.backgroundColor, value: UIColor.yellow, range: NSRange(location: 0, length: 10))
        
        //Yazıyı üzerine çizilecek çizginin belirler
        attributedTextDeneme.addAttribute(NSAttributedStringKey(rawValue: NSAttributedStringKey.strikethroughStyle.rawValue), value: 1, range: NSRange(location: 11, length: 6))
        
        //Yazıyı üzerine çizilecek çizginin rengini belirler
        attributedTextDeneme.addAttribute(NSAttributedStringKey.strikethroughColor, value: UIColor.red, range: NSRange(location: 11, length: 6))
        
        //Yazıyı sağa veya sola value değeri kadar yatırır
        attributedTextDeneme.addAttribute(NSAttributedStringKey.obliqueness, value: 1, range: NSRange(location: 11, length: 6))
        
        //Yazıyı genişletir
        attributedTextDeneme.addAttribute(NSAttributedStringKey.expansion, value: 0, range: NSRange(location: 11, length: 6))
        

        //Çıktıyı verecek olan kod
        labelLbl5.attributedText = attributedTextDeneme
 
        
        
        // 2 RENKLİ YAZI STİLİ TANIMLAMA KODU
        let strokeTextAttributedDeneme = [
            NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 30),
            NSAttributedStringKey.strokeColor : UIColor.red,
            NSAttributedStringKey.foregroundColor : UIColor.white,
            NSAttributedStringKey.strokeWidth : 3.0
            ]
            as [NSAttributedStringKey : Any]
       
        //Çıktıyı verecek olan kod
        labelLbl6.attributedText = NSMutableAttributedString(string: "LabelLbl6", attributes: strokeTextAttributedDeneme)
  
        
        print("Uygulama Yüklendi")

    }

}

