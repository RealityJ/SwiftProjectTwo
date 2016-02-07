//
//  SecondViewController.swift
//  Homework2
//
//  Created by Joaquin Castro-Calvo on 2/6/16.
//  Copyright © 2016 Joaquin Castro-Calvo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var restaurantsButton: UIButton!
    @IBOutlet weak var nightlifeButton: UIButton!
    @IBOutlet weak var downtownButton: UIButton!
    @IBOutlet weak var campusEventsButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        
        
        restaurantsButton.layer.borderWidth = 5;
        restaurantsButton.layer.borderColor =  UIColor(red: 255/255, green: 197/255, blue: 38/255, alpha: 1).CGColor
        restaurantsButton.layer.cornerRadius = 5;
        
        
        nightlifeButton.layer.borderWidth = 5;
        nightlifeButton.layer.borderColor =  UIColor(red: 255/255, green: 197/255, blue: 38/255, alpha: 1).CGColor
        nightlifeButton.layer.cornerRadius = 5;
        
        
        downtownButton.layer.borderWidth = 5;
        downtownButton.layer.borderColor =  UIColor(red: 255/255, green: 197/255, blue: 38/255, alpha: 1).CGColor
        downtownButton.layer.cornerRadius = 5;
        
        
        campusEventsButton.layer.borderWidth = 5;
        campusEventsButton.layer.borderColor =  UIColor(red: 255/255, green: 197/255, blue: 38/255, alpha: 1).CGColor
        campusEventsButton.layer.cornerRadius = 5;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

