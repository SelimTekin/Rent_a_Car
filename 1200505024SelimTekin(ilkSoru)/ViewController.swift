//
//  ViewController.swift
//  1200505024SelimTekin(ilkSoru)
//
//  Created by Selim Tekin on 6.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var isim = ""
    var soyisim = ""
    var aracTuru = ""

    @IBOutlet weak var baslikLabel: UILabel!
    @IBOutlet weak var isimText: UITextField!
    @IBOutlet weak var soyisimText: UITextField!
    @IBOutlet weak var aracTuruText: UITextField!
    @IBOutlet weak var aracGoruntuleButonu: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let genislik = view.frame.size.width
        let yukseklik = view.frame.size.height
        
        baslikLabel.textAlignment = .center
        baslikLabel.frame = CGRect(x: genislik*0.5 - genislik*0.4, y: yukseklik*0.12, width: genislik*0.8, height: yukseklik*0.05)
        
        isimText.textAlignment = .center
        isimText.frame = CGRect(x: genislik*0.5 - genislik*0.4, y: yukseklik*0.19, width: genislik*0.8, height: yukseklik*0.05)
        
        soyisimText.textAlignment = .center
        soyisimText.frame = CGRect(x: genislik*0.5 - genislik*0.4, y: yukseklik*0.26, width: genislik*0.8, height: yukseklik*0.05)
        
        aracTuruText.textAlignment = .center
        aracTuruText.frame = CGRect(x: genislik*0.5 - genislik*0.4, y: yukseklik*0.33, width: genislik*0.8, height: yukseklik*0.05)
        
        aracGoruntuleButonu.frame = CGRect(x: genislik*0.5 - genislik*0.4, y: yukseklik*0.40, width: genislik*0.8, height: yukseklik*0.05)
    }
    
    
    @IBAction func aracGoruntuleButonu(_ sender: Any) {
        
        if isimText.text! == ""{
            let uyari = UIAlertController(title: "Hata", message: "İsim yazmalısınız", preferredStyle: UIAlertController.Style.alert)
            let tamam = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default)
            
            uyari.addAction(tamam)
            self.present(uyari, animated: true)
        }
        if soyisimText.text! == ""{
            let uyari = UIAlertController(title: "Hata", message: "Soyisim yazmalısınız", preferredStyle: UIAlertController.Style.alert)
            let tamam = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default)
            
            uyari.addAction(tamam)
            self.present(uyari, animated: true)
        }
        if aracTuruText.text! == ""{
            let uyari = UIAlertController(title: "Hata", message: "Araç türüne suv, sedan veya hatchback yazmalısınız", preferredStyle: UIAlertController.Style.alert)
            let tamam = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default)
            
            uyari.addAction(tamam)
            self.present(uyari, animated: true)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "araclar"{
            let gidilecekYer = segue.destination as! AraclariGoruntuleViewController
            
            gidilecekYer.aracTuru = aracTuruText.text!
            gidilecekYer.isim = isimText.text!
            gidilecekYer.soyisim = soyisimText.text!
        }
    }
    

}

