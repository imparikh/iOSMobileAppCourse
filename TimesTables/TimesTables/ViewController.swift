//
//  ViewController.swift
//  TimesTables
//
//  Created by Ishaan Parikh on 7/23/15.
//  Copyright (c) 2015 iPari. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet var table: UITableView!
    //making the table accessible to the rest of the app
    
    @IBAction func sliderChanged(sender: AnyObject) {
        table.reloadData()
        //this function makes it so everytime the slider is moved, the table changes its data
    }
    
    @IBOutlet var sliderValue: UISlider!
    //not just the number value, but we can pull this out by using .value
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 20
        //this is to set the amount of rows
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        //default settings for each cell
        
        let num = Int(sliderValue.value*20)
        
        cell.textLabel?.text=String(num*(indexPath.row+1))
        
        return cell
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

