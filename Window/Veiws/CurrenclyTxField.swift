//
//  CurrenclyTxField.swift
//  Window
//
//  Created by Milos Otasevic on 17/12/2018.
//  Copyright © 2018 Milos Otasevic. All rights reserved.
//

import UIKit

@IBDesignable
class CurrenclyTxField: UITextField {

    
    override func prepareForInterfaceBuilder() {
        customeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customeView()
    }
        func customeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2502140411)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        
        if placeholder == nil{
            placeholder = " "
        }
        
        if let p = placeholder{
            
        let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        
        attributedPlaceholder = place
        
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        
        
        
    }

}
