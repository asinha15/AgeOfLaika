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
        let conversionConstantUpToTwoYears = 10.5
        let conversionConstantUpAfterTwoYears = 4
        var dogAge:Double
        dogAge = 0.0
        
        if humanAge <= 2 {
            dogAge = Double(humanAge) * conversionConstantUpToTwoYears
        } else {
            dogAge = (2 * conversionConstantUpToTwoYears) + Double(((humanAge - 2) * conversionConstantUpAfterTwoYears))
        }
    
        dogAgeLabel.hidden = false
        dogAgeLabel.text = "\(dogAge)" + " in dog years."
        humanAgeTextField.resignFirstResponder()
    }

}

