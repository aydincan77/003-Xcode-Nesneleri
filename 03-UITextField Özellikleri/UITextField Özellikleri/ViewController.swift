//
//  ViewController.swift
//  UITextField Özellikleri
//
//  Created by Aydın Can on 6.08.2018.
//  Copyright © 2018 CAN Soft. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var kullanıcıAdıTxt: UITextField!
    @IBOutlet weak var şifreTxt: UITextField!
    @IBOutlet weak var resimliKullanıcıAdıTxt: UITextField!
    @IBOutlet weak var kullanıcıAdıSayLbl: UILabel!
    
    let ilkSayı : Int = 0
    let istenenUzunluk : Int = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resimliKullanıcıAdıTxt.delegate = self
        
        kullanıcıAdıSayLbl.text = "\(ilkSayı) - \(istenenUzunluk)"
        
        resimliKullanıcıAdıTxt.text = ""
        resimliKullanıcıAdıTxt.layer.borderColor = UIColor.black.cgColor
        resimliKullanıcıAdıTxt.layer.borderWidth = 1
        resimliKullanıcıAdıTxt.alpha = 1.00
        resimliKullanıcıAdıTxt.placeholder = "Kullanıcı Adı Giriniz"
        resimliKullanıcıAdıTxt.clearButtonMode = UITextField.ViewMode.whileEditing
        resimliKullanıcıAdıTxt.keyboardType = UIKeyboardType.default
        resimliKullanıcıAdıTxt.autocapitalizationType = UITextAutocapitalizationType.words
        resimliKullanıcıAdıTxt.layer.cornerRadius = 25
        resimliKullanıcıAdıTxt.layer.masksToBounds = true
        resimliKullanıcıAdıTxt.textAlignment = .center
        resimliKullanıcıAdıTxt.textColor = UIColor.red
        resimliKullanıcıAdıTxt.font = UIFont(name: "Helvetica", size: 30)
        
        resimliKullanıcıAdıTxt.leftViewMode = UITextField.ViewMode.always
        let resim = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        resim.image = UIImage(named: "a.png")
        resimliKullanıcıAdıTxt.leftView = resim
        
        resimliKullanıcıAdıTxt.addSubview(resim)
        
    }

    //TextField içeri değiştikçe (editingChanged) içeriği say ve Label'e yaz
    @IBAction func harfSayFunc(_ sender: UITextField) {
        let kelimeler : String! = resimliKullanıcıAdıTxt.text
        let sayımYap = kelimeler.count
        kullanıcıAdıSayLbl.text = "\(sayımYap) - \(istenenUzunluk)"
    }
    
    //TextField kontrolü aldığında (editingDidBegin) backgroundColor yeşil olsun
    @IBAction func resimliTextTıklandıTxt(_ sender: UITextField) {
        resimliKullanıcıAdıTxt.backgroundColor = UIColor.green
    }
    
    // TextField kontrolü kaybettiğinde (editingDidEnd) backgroundColor beyaz olsun
    @IBAction func resimliTextKontrolüKaybettiTxt(_ sender: UITextField) {
        resimliKullanıcıAdıTxt.backgroundColor = UIColor.white
    }
    
    
     //Klavye gizle yöntem - 1 (DidEndOnExit)
     @IBAction func klavyeSaklaBtn(_ sender: UITextField) {
     resimliKullanıcıAdıTxt.resignFirstResponder()
     }
 
  
    //Klavye gizle yöntem - 2
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        kullanıcıAdıTxt.backgroundColor = UIColor.white
    }



    // TextField karakter sayısını kontrol et yöntem - (sınırlama için)
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let yazı = resimliKullanıcıAdıTxt.text else {return true}
        let yeniUzunluk = yazı.count
        return yeniUzunluk <= istenenUzunluk - 1
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

