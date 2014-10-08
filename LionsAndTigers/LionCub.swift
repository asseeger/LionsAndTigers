//
//  LionCub.swift
//  LionsAndTigers
//
//  Created by Andreas Seeger @MBPR on 08.10.14.
//  Copyright (c) 2014 ASS. All rights reserved.
//

import Foundation

class LionCub:Lion {
    
    var isMale = false
    
    func rubLionsCubBelly() {
        println("LionCub: Snuggle and be happy.")
    }
    
    override func roar() {
        super.roar()
        println("LionCub: Growl Growl")
    }
    
    override func randomFact() -> String {
        var randomFactString:String
        if isMale {
            randomFactString = "Cubs are usually hidden in dense bush for approximately 6 weeks."
        } else {
            randomFactString = "Cubs begin to eat meat at about 6 weeks"
        }
        
        return randomFactString
    }
    
}
