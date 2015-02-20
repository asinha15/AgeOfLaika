//
//  ViewController.swift
//  Age of Laika
//
//  Created by Arnab Sinha on 2/20/15.
//  Copyright (c) 2015 Arnab Sinha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var humanAgeTextField: UITextField!

    @IBOutlet var dogAgeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertHumanAgeToDogAgeButtonPressed(sender: UIButton) {
        let humanAge = humanAgeTextField.text.toInt()!
        let conversionConstant = 7
        let dogAge = humanAge * conversionConstant
        dogAgeLabel.hidden = false
        dogAgeLabel.text = "\(dogAge)" + " in dog years."
        humanAgeTextField.resignFirstResponder()
    }

}

