//
//  ViewController.swift
//  Navigation Bars
//
//  Created by Ishaan Parikh on 7/23/15.
//  Copyright (c) 2015 iPari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0;
    var timer = NSTimer()
    @IBOutlet var time: UILabel!
 
    @IBAction func restart(sender: AnyObject) {
        count = 0
        time.text="\(count)"
         timer = NSTimer.scheduledTimerWithTimeInterval(0, target: self, selector: Selector("pauser"), userInfo: nil, repeats: true)
        
    }
    @IBAction func start(sender: AnyObject) {
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    @IBAction func pause(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(0, target: self, selector: Selector("pauser"), userInfo: nil, repeats: true)
    }

    
    func result() {
        println("called")
        count++
        time.text="\(count)"
    }
    
    func pauser() {
        time.text="\(count)"
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

