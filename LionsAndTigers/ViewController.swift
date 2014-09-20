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
        
        // instantiating Tiger
        var myTiger = Tiger()
        // setting up myTigers properties
        myTiger.name = "Tigger"
        myTiger.breed = "Bengal"
        myTiger.age = 3
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        
        // confirm existence of myTiger instance
        println("My tiger's name is \(myTiger.name), it's breed is \(myTiger.breed) and he's \(myTiger.age) years old. This is what he looks like: \(myTiger.image)")
        
        // update UI
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = String(myTiger.age)
        breedLabel.text = myTiger.breed
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
    }

}

