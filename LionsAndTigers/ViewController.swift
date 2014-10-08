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
    
    var myTigers:[Tiger] = []
    
    var myLions:[Lion] = []
    
    var myLionCubs:[LionCub] = []
    
    var index = 0
    
    var currentAnimal = (species: "Tiger", index: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        createTigers()
        createLions()
        
        var lionCub = LionCub()
        lionCub.age = 1
        lionCub.name = "Simba"
        lionCub.image = UIImage(named: "LionCub1.jpg")
        lionCub.subspecies = "Masai"
        lionCub.isMale = true
        
        println("Lioncub says:")
        lionCub.roar()
        lionCub.rubLionsCubBelly()
        
        var femaleLionCub = LionCub()
        femaleLionCub.age = 1
        femaleLionCub.name = "Nala"
        femaleLionCub.image = UIImage(named: "LionCub2.jpeg")
        femaleLionCub.isMale = false
        femaleLionCub.subspecies = "Transvaal"
        
        self.myLionCubs += [lionCub, femaleLionCub]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        //updateTiger()
        updateAnimal()
        updateView()
    }
    
    func updateAnimal() {
        switch currentAnimal {
        case ("Tiger", _):
            currentAnimal = ("Lion", Int(arc4random_uniform(UInt32(myLions.count))))
        case ("Lion", _):
            currentAnimal = ("LionCub", Int(arc4random_uniform(UInt32(myLionCubs.count))))
        default:
            currentAnimal = ("Tiger", Int(arc4random_uniform(UInt32(myTigers.count))))
        }
    }
    
    func createTigers() {
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
    
    func createLions() {
        var lion = Lion()
        lion.age = 4
        lion.isAlphaMale = false
        lion.image = UIImage(named: "Lion.jpg")
        lion.name = "Mufasa"
        lion.subspecies = "West African"
        myLions.append(lion)
        
        var lioness = Lion()
        lioness.age = 3
        lioness.isAlphaMale = false
        lioness.image = UIImage(named: "Lioness.jpeg")
        lioness.name = "Sarabi"
        lioness.subspecies = "Barbary"
        myLions.append(lioness)
    }
    
    func updateTiger() {
        // sequential display of tigers
        if index == myTigers.count - 1 {
            index = 0
        } else{
            index += 1
        }
        
        println("Index # \(index)")
        
        let tiger = myTigers[index]
        
        
        println(tiger.name + ": ")
        tiger.chuffANumberOfTimes(2)
        tiger.chuffANumberOfTimes(5, isLoud: false)
        println(tiger.ageInTigerYearsFromAge(tiger.age))

    }
    
    func updateView () {
        UIView.transitionWithView(self.view, duration: 1, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            if self.currentAnimal.species == "Tiger" {
                let tiger = self.myTigers[self.currentAnimal.index]
                self.myImageView.image = tiger.image
                self.breedLabel.text = tiger.breed
                self.ageLabel.text = "\(tiger.age)"
                self.nameLabel.text = tiger.name
                self.randomFactLabel.text = tiger.randomFact()
                self.randomFactLabel.hidden = false
                
            } else if self.currentAnimal.species == "Lion" {
                let lion = self.myLions[self.currentAnimal.index]
                self.myImageView.image = lion.image
                self.breedLabel.text = lion.subspecies
                self.ageLabel.text = "\(lion.age)"
                self.nameLabel.text = lion.name
                self.randomFactLabel.hidden = true
                
            } else if self.currentAnimal.species == "LionCub" {
                let lionCub = self.myLionCubs[self.currentAnimal.index]
                self.myImageView.image = lionCub.image
                self.breedLabel.text = lionCub.subspecies
                self.ageLabel.text = "\(lionCub.age)"
                self.nameLabel.text = lionCub.name
                self.randomFactLabel.hidden = true
            }
            
        }, completion: { (finished: Bool) -> () in})

    }
}

