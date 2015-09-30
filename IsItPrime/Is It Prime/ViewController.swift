//
//  ViewController.swift
//  Is It Prime
//
//  Created by Ishaan Parikh on 7/22/15.
//  Copyright (c) 2015 iPari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var input: UITextField!
    @IBOutlet var answer: UILabel!
    @IBAction func click(sender: AnyObject) {
        if input.text.toInt() != nil{
        var inp = input.text.toInt()
        var count = 0
        for var i = 1; i<=inp; i++ {
            if inp!%i==0{
                count++;
            }
        }
        if count==2{
            answer.text="You are prime!"
        }
        else{
            answer.text="You are composite with \(count-2) divisors!"
            }}
        else{
            answer.text="Please enter a number."
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

