//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Andreas Seeger @MBPR on 20.09.14.
//  Copyright (c) 2014 ASS. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var name = ""
    var breed = ""
    var age = 0
    var image = UIImage(named: "")
    
    func chuff () {
        println("Tiger: Chuff Chuff")
    }
    
    func chuffANumberOfTimes (numberOfTimes: Int) {
        for var chuff = 0; chuff < numberOfTimes; ++chuff {
            self.chuff()
        }
    }
}
