//
//  FirstViewController.swift
//  Homework2
//
//  Created by Joaquin Castro-Calvo on 2/6/16.
//  Copyright © 2016 Joaquin Castro-Calvo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var d2lButton: UIButton!
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var studySpotsButton: UIButton!
    @IBOutlet weak var coenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.tabBarController?.tabBar.hidden = false;
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 255/255, green: 197/255, blue: 38/255, alpha: 1)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
                
        coenButton.layer.borderWidth = 4;
        coenButton.layer.borderColor  = UIColor(red: 255/255, green: 197/255, blue: 38/255, alpha: 1).CGColor
        coenButton.backgroundColor = UIColor(red: 1/255, green: 18/255, blue: 107/255, alpha: 0.3)
        coenButton.setBackgroundImage(UIImage(named: "coenpic.jpg"), forState: UIControlState.Normal)
        
        d2lButton.layer.borderWidth = 4;
        d2lButton.layer.borderColor  = UIColor(red: 255/255, green: 197/255, blue: 38/255, alpha: 1).CGColor
        d2lButton.backgroundColor = UIColor(red: 1/255, green: 18/255, blue: 107/255, alpha: 0.3)
        
        studySpotsButton.setBackgroundImage(UIImage(named: "library.jpg"), forState: UIControlState.Normal)
        studySpotsButton.layer.borderWidth = 4;
        studySpotsButton.layer.borderColor  = UIColor(red: 255/255, green: 197/255, blue: 38/255, alpha: 1).CGColor
        studySpotsButton.backgroundColor = UIColor(red: 1/255, green: 18/255, blue: 107/255, alpha: 0.3)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

