//
//  ViewController.swift
//  Controlling The Keyboard
//
//  Created by Ishaan Parikh on 7/25/15.
//  Copyright (c) 2015 iPari. All rights reserved.
//

import UIKit

//have to add a delegate to make sure the view control can control the text fields

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet var textField: UITextField!
    @IBOutlet var result: UILabel!
    @IBAction func buttonPressed(sender: AnyObject) {
        
        result.text=textField.text
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //this is saying the delegate is responsible for the text field
        self.textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //used to detect touches in the freespace of the app
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
        self.view.endEditing(true)
        //this closes the keyboard
        
    }
    
    //to make the return button also close the keyboard
    //the function name is basically saying what happens when the return key is hit
    func textFieldShouldReturn(textField: UITextField!)->Bool{
        
        textField.resignFirstResponder()
        //the First Responder is the keyboard, and resigning it is closing it
        
        return true
        //bc we have to return a boolean...
        
    }


}

