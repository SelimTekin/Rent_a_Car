//
//  AraclariGoruntuleViewController.swift
//  1200505024SelimTekin(ilkSoru)
//
//  Created by Selim Tekin on 6.03.2023.
//

import UIKit

class AraclariGoruntuleViewController: UIViewController {
    
    //var araclar = ["hatchback" : ["hatchback1", "hatchback2"], "sedan" : ["sedan1", "sedan2"], "suv" : ["SUV1", "SUV2"]]
    
    var isim = ""
    var soyisim = ""
    var aracTuru = ""
    
    
    @IBOutlet weak var baslikLabel: UILabel!
    @IBOutlet weak var goruntu: UIImageView!
    @IBOutlet weak var goruntuSecond: UIImageView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let genislik = view.frame.size.width
        let yukseklik = view.frame.size.height
        
        baslikLabel.textAlignment = .center
        baslikLabel.frame = CGRect(x: genislik*0.5 - genislik*0.4, y: yukseklik*0.12, width: genislik*0.8, height: yukseklik*0.05)
        
        goruntu.frame = CGRect(x: genislik*0.5 - genislik*0.4, y: yukseklik*0.19, width: genislik*0.8, height: yukseklik*0.3)
        
        goruntuSecond.frame = CGRect(x: genislik*0.5 - genislik*0.4, y: yukseklik*0.5, width: genislik*0.8, height: yukseklik*0.3)
        
        button1.frame = CGRect(x: genislik*0.5 - genislik*0.4, y: yukseklik*0.19, width: genislik*0.8, height: yukseklik*0.5)

        button2.frame = CGRect(x: genislik*0.5 - genislik*0.4, y: yukseklik*0.5, width: genislik*0.8, height: yukseklik*0.5)

        if aracTuru == "hatchback"{
            goruntu.image = UIImage(named: "hatchback1")
            goruntuSecond.image = UIImage(named: "hatchback2")
        }
        if aracTuru == "sedan"{
            goruntu.image = UIImage(named: "sedan1")
            goruntuSecond.image = UIImage(named: "sedan2")
        }
        if aracTuru == "suv"{
            goruntu.image = UIImage(named: "SUV1")
            goruntuSecond.image = UIImage(named: "SUV2")
        }
        
    }
    
    
    @IBAction func gecisButonu(_ sender: Any) {
        //performSegue(withIdentifier: "KiralamaViewController", sender: nil)
    }
    
    @IBAction func gecisButonu1(_ sender: Any) {
        //performSegue(withIdentifier: "KiralamaViewController", sender: nil)
    }
        /*@objc func kiralamaSayfasinaGec(_ sender: UITapGestureRecognizer){
        performSegue(withIdentifier: "KiralamaViewController", sender: nil)
    }*/
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "KiralamaViewController"{
            let gidilecekYer = segue.destination as! KiralamaViewController
            gidilecekYer.baslik = aracTuru
            gidilecekYer.aracTuru = aracTuru
            gidilecekYer.isim = isim
            gidilecekYer.soyisim = soyisim
            
        }
    }
    
    

}
