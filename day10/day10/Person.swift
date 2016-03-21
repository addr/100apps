//
//  Person.swift
//  day10
//
//  Created by Andy on 3/21/16.
//  Copyright © 2016 Andy Rice. All rights reserved.
//

import UIKit

class Person: NSObject {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }

}
