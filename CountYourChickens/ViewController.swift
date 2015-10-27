//
//  ViewController.swift
//  CountYourChickens
//
//  Created by Karissa the Squid on 10/26/15.
//  Copyright © 2015 Rock Valley College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var balance: UITextField!
    @IBOutlet weak var balancelabel: UILabel!
    @IBOutlet weak var income: UITextField!
    @IBOutlet weak var incomelabel: UILabel!
    @IBOutlet weak var spending: UITextField!
    @IBOutlet weak var spendinglabel: UILabel!
    @IBOutlet weak var savings: UITextField!
    @IBOutlet weak var savinglabel: UILabel!
    @IBOutlet weak var totallabel: UILabel!
   
    @IBOutlet weak var btnSave: UIButton!
    
    @IBOutlet weak var externalinformation: UIBarButtonItem!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
}

