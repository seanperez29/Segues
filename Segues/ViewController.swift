//
//  ViewController.swift
//  Segues
//
//  Created by Sean Perez on 4/24/16.
//  Copyright © 2016 Awsome. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loadBlack(sender: AnyObject) {
        //Use SENDER to pass data
        let str = "Hey, I am coming from the main screen"
        performSegueWithIdentifier("goToBlack", sender: str)
    }
    @IBAction func loadYellow(sender: AnyObject) {
        performSegueWithIdentifier("goToYellow", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //This is where you do work right before the view loads
        //Keep in mind - the next view controller has already been initialized - it's just not yet visible on the screen.
        if segue.identifier == "goToBlack" {
            if let blackVC = segue.destinationViewController as? BlackViewController {
                if let theString = sender as? String {
                    blackVC.transfertext = theString
                }
            }
        }
    }
}

