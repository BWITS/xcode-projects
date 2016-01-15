//
//  ViewController.swift
//  StopWatch
//
//  Created by Bill W on 10/01/2016.
//  Copyright © 2016 AppFish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var time = 0
    
    func increaseTimer() {
        time++
        timeWatch.text = String(time)
    }
    @IBOutlet weak var timeWatch: UILabel!
    @IBAction func play(sender: AnyObject) {
        timer.invalidate()
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
    }
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    @IBAction func reset(sender: AnyObject) {
        timer.invalidate()
        time = 0
        timeWatch.text = "0"
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

