//
//  Wage.swift
//  Window
//
//  Created by Milos Otasevic on 17/12/2018.
//  Copyright © 2018 Milos Otasevic. All rights reserved.
//

import Foundation

class Wage{
    class func getHours(wage: Double, price: Double) -> Int{
        return Int(ceil(price / wage))
    }
}
