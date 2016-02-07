//
//  CoenViewController.swift
//  Homework2
//
//  Created by Joaquin Castro-Calvo on 2/7/16.
//  Copyright © 2016 Joaquin Castro-Calvo. All rights reserved.
//

import UIKit

class CoenViewController: UIViewController {

    @IBOutlet weak var engineeringDepartmentButton: UIButton!
    @IBOutlet weak var homeworkHelpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        
        engineeringDepartmentButton.layer.borderWidth = 4
        engineeringDepartmentButton.layer.borderColor = UIColor(red: 255/255, green: 197/255, blue: 38/255, alpha: 1).CGColor
        engineeringDepartmentButton.backgroundColor = UIColor(red: 1/255, green: 18/255, blue: 107/255, alpha: 0.3)
        
        homeworkHelpButton.layer.borderWidth = 4
        homeworkHelpButton.layer.borderColor = UIColor(red: 255/255, green: 197/255, blue: 38/255, alpha: 1).CGColor
        homeworkHelpButton.backgroundColor = UIColor(red: 1/255, green: 18/255, blue: 107/255, alpha: 0.3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
