//
//  ViewController.swift
//  Permanent Storage
//
//  Created by Bill W on 16/01/2016.
//  Copyright © 2016 AppFish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // NSUserDefaults.standardUserDefaults().setObject("Bill", forKey: "name")
        let userName = NSUserDefaults.standardUserDefaults().objectForKey("name")!
        print(userName)

        //let arr = [1,2,3,4]
        // NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        let returnArray = NSUserDefaults.standardUserDefaults().objectForKey("array")! as! NSArray
        for x in returnArray {
            print(x)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

