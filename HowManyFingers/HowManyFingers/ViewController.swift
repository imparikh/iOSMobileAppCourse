//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Ishaan Parikh on 7/22/15.
//  Copyright (c) 2015 iPari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var correctOr: UILabel!
    @IBOutlet var input: UITextField!
    @IBAction func press(sender: AnyObject) {
        var randNum = arc4random_uniform(10)
        var randInt = Int(randNum)
        var guess = input.text.toInt()
        if guess != nil{
            if guess == randInt{
                correctOr.text = "Correct!"
            }
            else{
                correctOr.text="The correct number was \(randInt)."
            }
        }
        else{
            correctOr.text="Please enter a number."
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

