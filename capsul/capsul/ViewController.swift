//
//  ViewController.swift
//  capsul
//
//  Created by Steven T Hanna on 11/22/14.
//  Copyright (c) 2014 Steven Hanna. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var PillTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Update info upon view return
    override func viewWillAppear(animated: Bool) {
        PillTable.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pillManager.pills.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier:"test")
        cell.textLabel.text = PillManager.pills[indexPath.row].name
        cell.detailTextLabel?.text = PillManager.pills[indexPath.row].timeToTake
        
        return cell
    }


}

