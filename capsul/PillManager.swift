//
//  PillManager.swift
//  capsul
//
//  Created by Steven T Hanna on 11/22/14.
//  Copyright (c) 2014 Steven Hanna. All rights reserved.
//

import UIKit

// Initalize global variables
var pillManager: PillManager = PillManager()

struct pills {
    var name = "Un-named"
    var dateAdded = "Un-dated"
    var timeToTake = "Un-assigned"
    
}

class PillManager: NSObject {
    var pills = [pill]()
    
    func addPill(name: String, dateAdded: String, timeToTake: String) {
        pills.append(pill(name: name, dateAdded: dateAdded, timeToTake: timeToTake))
    }
    

}
