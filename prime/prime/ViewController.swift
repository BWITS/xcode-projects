//
//  ViewController.swift
//  prime
//
//  Created by Bill W on 9/01/2016.
//  Copyright © 2016 AppFish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBAction func submit(sender: AnyObject) {
        if let number = Int(textField.text!) {
            var isPrime = true
            
            if number <= 1 {
                isPrime = false
            } else if number > 3 {
//                for var i = 2; i < (number/2 + 1); i++ {
//                    if number % i == 0 {
//                        isPrime = false
//                    }
//                }
                if number % 2 == 0 || number % 3 == 0 {
                    isPrime = false
                }
                var i = 5
                while i * i <= number {
                    if number % i == 0 || number % ( i + 2 ) == 0 {
                        isPrime = false
                    }
                    i = i + 6
                }
            }
            
            if isPrime == true {
                result.text = "\(number) is Prime"
            }else {
                result.text = "\(number) is not prime"
            }
        } else {
            result.text = "Please input integer!"
        }
    }
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

