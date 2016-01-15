//
//  ViewController.swift
//  Time Tables
//
//  Created by Bill W on 15/01/2016.
//  Copyright © 2016 AppFish. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var slideValue: UISlider!
    @IBAction func slideMove(sender: AnyObject) {
        table.reloadData()
    }
    
    @IBOutlet weak var table: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let timeTable = Int(slideValue.value * 20)
        
        cell.textLabel?.text = String(timeTable * indexPath.row)
        
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

