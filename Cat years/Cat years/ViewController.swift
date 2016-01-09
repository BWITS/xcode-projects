//
//  ViewController.swift
//  Cat years
//
//  Created by Bill W on 1/01/2016.
//  Copyright © 2016 AppFish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var catAgeTextField: UITextField!
    @IBOutlet weak var resultLable: UILabel!
    @IBAction func findAge(sender: AnyObject) {
        var catAge = Int(catAgeTextField.text!)!
        catAge *= 7
        resultLable.text = "Your cat is \(catAge) in cat years"
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

