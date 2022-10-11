//
//  ViewController.swift
//  window-shopper
//
//  Created by Aravinth on 10/10/22.
//

import UIKit

class MainVC: UIViewController {

   
   
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    
    @IBOutlet weak var sampleButton: UIButton!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton (frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) , for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
    }

    @objc func calculate(){
        
        print( "We got here")
    }
}

