//
//  Lion.swift
//  LionsAndTigers
//
//  Created by Andreas Seeger @MBPR on 28.09.14.
//  Copyright (c) 2014 ASS. All rights reserved.
//

import Foundation
import UIKit

class Lion {
    
    var age = 0
    var isAlphaMale = false
    var image = UIImage(named: "")
    var name = ""
    var subspecies = ""
    
    func roar () {
        println("Class lion: roar roar")
    }
    
    func changeToAlphaMale() {
        self.isAlphaMale = true
    }
    
    func randomFact() -> String {
        var randomFact:String
        
        if self.isAlphaMale {
            randomFact = "Male lions are easy to recognize thanks to their manes."
        } else {
            randomFact = "Female Lions form the stable social unit and do not tolerate outside females."
        }
        
        return randomFact
    }
}
