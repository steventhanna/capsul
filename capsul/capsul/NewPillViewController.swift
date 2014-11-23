//
//  NewPillViewController.swift
//  capsul
//
//  Created by Steven T Hanna on 11/22/14.
//  Copyright (c) 2014 Steven Hanna. All rights reserved.
//

import UIKit

class NewPillViewController: UIViewController {
    
    @IBOutlet var pillField: UITextField!
    @IBOutlet var dateField: UITextField!
    @IBOutlet var timeField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addThePill(sender: UIButton) {
        pillManager.addPill(pillField.text, dateAdded: dateField.text, timeToTake: timeField.text)
        
    }
    
    // IOS Touch Functions
    // UITextField delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
}

