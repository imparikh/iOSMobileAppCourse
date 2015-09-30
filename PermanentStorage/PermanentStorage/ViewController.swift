//
//  ViewController.swift
//  PermanentStorage
//
//  Created by Ishaan Parikh on 7/23/15.
//  Copyright (c) 2015 iPari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        //NSUserDefaults.standardUserDefaults().setObject("Rob", forKey: "name")
        //Only has to be run once for it to be saved
        
        var name = NSUserDefaults.standardUserDefaults().objectForKey("name")! as String
        
        //var arr = [1,2,3]
        
        //NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
    
        var recalledArray = NSUserDefaults.standardUserDefaults().objectForKey("array")! as NSArray
        
        println(recalledArray)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

