//
//  ViewController.swift
//  ExampleApp
//
//  Created by Ishaan Parikh on 7/21/15.
//  Copyright (c) 2015 iPari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    @IBAction func buttonPressed(sender: AnyObject) {
        myLabel.text="new.";
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

