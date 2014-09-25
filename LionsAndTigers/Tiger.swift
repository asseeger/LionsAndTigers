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
    
    func chuffANumberOfTimes (numberOfTimes: Int, isLoud: Bool) {
        for var chuffTimes = 1; chuffTimes <= numberOfTimes; chuffTimes++ {
            if isLoud {
                chuff()
            } else {
                println("Purr, purr.")
            }
        }
    }
    
    func ageInTigerYearsFromAge (regularAge: Int) -> Int {
        let newAge = regularAge * 3
        return newAge
    }
    
    func randomFact () -> String {
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        var randomFact:String
        
        if randomNumber == 0 {
            randomFact = "The Tiger is the bigges species in the cat family."
        } else if randomNumber == 1 {
            randomFact = "Tigers can reach a length of 3.3m."
        } else { //randomNumber == 2
            randomFact = "A group of tigers is called 'ambush' or 'streak'."
        }
        
        return randomFact
    }
}
