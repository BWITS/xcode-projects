//
//  ViewController.swift
//  Fingers
//
//  Created by Bill W on 3/01/2016.
//  Copyright © 2016 AppFish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var guessFingers: UILabel!
    @IBAction func submit(sender: AnyObject) {

        let fingers = String(arc4random_uniform(6))
        print(fingers)
        if fingers == textField.text {
            guessFingers.text = "Your guess is correct: \(textField.text!)"
        }else{
            guessFingers.text = "Wrong! It is \(fingers)"
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


}

