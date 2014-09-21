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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // instantiating first Tiger
        var firstTiger = Tiger()
        // setting up myTigers properties
        firstTiger.name = "Tigger"
        firstTiger.breed = "Bengal"
        firstTiger.age = 3
        firstTiger.image = UIImage(named: "BengalTiger.jpg")
        
        // instantiating and setting properties for further tigers
        var secondTiger = Tiger(name: "Tigress", breed: "Indechines Tiger", age: 2, image: UIImage(named: "IndochinesTiger.jpg"))
        
        var thirdTiger = Tiger(name: "Jacob", breed: "Malayan Tiger", age: 4, image: UIImage(named: "MalayanTiger.jpg"))
        
        var fourthTiger = Tiger(name: "Spar", breed: "Siberian Tiger", age: 5, image: UIImage(named: "Siberian.Tiger.jpg"))
        
        // update UI
        myImageView.image = firstTiger.image
        nameLabel.text = firstTiger.name
        ageLabel.text = String(firstTiger.age)
        breedLabel.text = firstTiger.breed
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
    }

}

