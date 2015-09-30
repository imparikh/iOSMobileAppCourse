//
//  ViewController.swift
//  CatYears
//
//  Created by Ishaan Parikh on 7/21/15.
//  Copyright (c) 2015 iPari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var catAge: UITextField!
    @IBOutlet var answerLabel: UILabel!

    @IBAction func button(sender: AnyObject) {
        println(catAge.text);
        var enteredAge = catAge.text.toInt();
        if enteredAge != nil {
            var catYears = enteredAge! * 7;
            answerLabel.text="Your cat is \(catYears) years old." ;
        }
        else{
            answerLabel.text="Please enter a number.";
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

