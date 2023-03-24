//
//  KiralamaViewController.swift
//  1200505024SelimTekin(ilkSoru)
//
//  Created by Selim Tekin on 6.03.2023.
//

import UIKit

class KiralamaViewController: UIViewController {

    var baslik = ""
    var isim = ""
    var soyisim = ""
    var aracTuru = ""
    var fiyat = 0
    var kontrol = 0
    
    @IBOutlet weak var isimLabel: UILabel!
    @IBOutlet weak var soyisimLabel: UILabel!
    @IBOutlet weak var aracTuruLabel: UILabel!
    @IBOutlet weak var baslikLabel: UILabel!
    @IBOutlet weak var gunSayisi: UITextField!
    @IBOutlet weak var kiralaButonu: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let genislik = view.frame.size.width
        let yukseklik = view.frame.size.height
        
        baslikLabel.textAlignment = .center
        baslikLabel.frame = CGRect(x: genislik*0.5 - genislik*0.4, y: yukseklik*0.12, width: genislik*0.8, height: yukseklik*0.05)
        
        isimLabel.textAlignment = .center
        isimLabel.frame = CGRect(x: genislik*0.5 - genislik*0.4, y: yukseklik*0.19, width: genislik*0.8, height: yukseklik*0.05)
        
        soyisimLabel.textAlignment = .center
        soyisimLabel.frame = CGRect(x: genislik*0.5 - genislik*0.4, y: yukseklik*0.26, width: genislik*0.8, height: yukseklik*0.05)
        
        aracTuruLabel.textAlignment = .center
        aracTuruLabel.frame = CGRect(x: genislik*0.5 - genislik*0.4, y: yukseklik*0.33, width: genislik*0.8, height: yukseklik*0.05)
        
        gunSayisi.textAlignment = .center
        gunSayisi.frame = CGRect(x: genislik*0.5 - genislik*0.4, y: yukseklik*0.4, width: genislik*0.8, height: yukseklik*0.05)
        
        kiralaButonu.frame = CGRect(x: genislik*0.5 - genislik*0.4, y: yukseklik*0.47, width: genislik*0.8, height: yukseklik*0.05)


        baslikLabel.text = "Kiralama Sayfası"
        isimLabel.text = "İsim: \(isim)"
        soyisimLabel.text = "Soyisim: \(soyisim)"
        aracTuruLabel.text = "Araç Türü: \(aracTuru)"
        
        
    }
    
    
    @IBAction func kiralaButonu(_ sender: Any) {
        if kontrol == 0{
            if gunSayisi.text! == ""{
                let uyari = UIAlertController(title: "Hata", message: "Gün sayısı yazmadınız", preferredStyle: UIAlertController.Style.alert)
                let tamam = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default)
                
                uyari.addAction(tamam)
                self.present(uyari, animated: true)
            }
            else{
                if let price = Int(gunSayisi.text!) {
                    fiyat = price * 200
                } else {
                    // Sayı girilmediyse uyarı verir
                    let uyari = UIAlertController(title: "Hata", message: "Sayı yazmalısnız", preferredStyle: UIAlertController.Style.alert)
                    let tamam = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default)
                    
                    uyari.addAction(tamam)
                    self.present(uyari, animated: true)
                }
                let uyari = UIAlertController(title: "Araç Kiralandı", message: "Fiyatı: \(fiyat)", preferredStyle: UIAlertController.Style.alert)
                let tamam = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default)
                
                uyari.addAction(tamam)
                self.present(uyari, animated: true)
                
                kontrol = 1
            }
        }
        else{
            let uyari = UIAlertController(title: "Hata", message: "Araç zaten kiralandı", preferredStyle: UIAlertController.Style.alert)
            let tamam = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default)
            
            uyari.addAction(tamam)
            self.present(uyari, animated: true)
        }
    }
    
}
