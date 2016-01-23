//
//  SecondViewController.swift
//  To do list
//
//  Created by Bill W on 23/01/2016.
//  Copyright © 2016 AppFish. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var item: UITextField!
    @IBAction func addItem(sender: AnyObject) {
        if item.text != "" {
            toDoList.append(item.text!)
            item.text = ""
            NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
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

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        item.resignFirstResponder()
        return true
    }

}

