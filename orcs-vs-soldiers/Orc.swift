//
//  Orc.swift
//  orcs-vs-soldiers
//
//  Created by dev1 on 5/11/16.
//  Copyright © 2016 dev1. All rights reserved.
//

import Foundation

class Orc: Players {
    
    override var type: String {
        return "Orc"
    }
    
    override var attackPwr: Int {
        return 30
    }
}