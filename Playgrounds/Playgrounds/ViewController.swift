//
//  ViewController.swift
//  Playgrounds
//
//  Created by Ishaan Parikh on 7/22/15.
//  Copyright (c) 2015 iPari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myText: UITextField!
    @IBOutlet var answerSpot: UILabel!
    @IBAction func buttonDown(sender: AnyObject) {
        var randNum = arc4random_uniform(10)
        var intGuess = myText.text.toInt()
        if intGuess != nil
        {
            if Int(randNum) == intGuess
            {
                answerSpot.text="Correct!"
            }
            else
            {
                answerSpot.text="Sorry! It was actually \(randNum)."
            }
        }
        else
        {
            answerSpot.text = "Please enter a number."
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

