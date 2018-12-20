//
//  ViewController.swift
//  Window
//
//  Created by Milos Otasevic on 16/12/2018.
//  Copyright © 2018 Milos Otasevic. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet var reoultL: UILabel!
    @IBOutlet var hoursL: UILabel!
    @IBOutlet var wageTxt: CurrenclyTxField!
    @IBOutlet var priceTxt: CurrenclyTxField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor( #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) , for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
    
        reoultL.isHidden = true
        hoursL.isHidden = true
    }

    @objc func calculate(){
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text{
            if let wagee = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                reoultL.isHidden = false
                hoursL.isHidden = false
                reoultL.text = "\(Wage.getHours(wage: wagee, price: price))"
                
            }
        }
    }

    @IBAction func clearBtn(_ sender: Any) {
        reoultL.isHidden = true
        hoursL.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
}

