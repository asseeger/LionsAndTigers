//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Andreas Seeger @MBPR on 20.09.14.
//  Copyright (c) 2014 ASS. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var breedLabel: UILabel!
    
    @IBOutlet weak var randomFactLabel: UILabel!
    
    // property to be used in all functions of this class (focus is global)
    var myTigers:[Tiger] = []
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // instantiating first Tiger
        var firstTiger = Tiger()
        // setting up myTigers properties
        firstTiger.name = "Tigger"
        firstTiger.breed = "Bengal"
        firstTiger.age = 1
        firstTiger.image = UIImage(named: "BengalTiger.jpg")
        
        myTigers.append(firstTiger)
        
        // instantiating and setting properties for further tigers
        var secondTiger = Tiger(name: "Tigress", breed: "Indechines Tiger", age: 2, image: UIImage(named: "IndochineseTiger.jpg"))
        
        var thirdTiger = Tiger(name: "Jacob", breed: "Malayan Tiger", age: 3, image: UIImage(named: "MalayanTiger.jpg"))
        
        var fourthTiger = Tiger(name: "Spar", breed: "Siberian Tiger", age: 4, image: UIImage(named: "SiberianTiger.jpg"))
        
        myTigers += [secondTiger, thirdTiger, fourthTiger]
        
        // update UI
        myImageView.image = firstTiger.image
        nameLabel.text = firstTiger.name
        ageLabel.text = String(firstTiger.age)
        breedLabel.text = firstTiger.breed
        randomFactLabel.text = firstTiger.randomFact()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        
        // randomised display of tigers
//        let randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
//        myImageView.image = myTigers[randomIndex].image
//        nameLabel.text = myTigers[randomIndex].name
//        ageLabel.text = String(myTigers[randomIndex].age)
//        breedLabel.text = myTigers[randomIndex].breed
        
        println(sender)
        
        // sequential display of tigers
        if index == myTigers.count - 1 {
            index = 0
        } else{
            index += 1
        }

        println("Index # \(index)")
        
        let tiger = myTigers[index]
        
        UIView.transitionWithView(self.view, duration: 1, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            self.myImageView.image = tiger.image
            self.nameLabel.text = tiger.name
            self.ageLabel.text = "\(tiger.age)"
            self.breedLabel.text = tiger.breed
            self.randomFactLabel.text = tiger.randomFact()
            
            }, completion: { (finished: Bool) -> () in})
        
        println(tiger.name + ": ")
        tiger.chuffANumberOfTimes(2)
        tiger.chuffANumberOfTimes(5, isLoud: false)
        println(tiger.ageInTigerYearsFromAge(tiger.age))
        
    }

}

