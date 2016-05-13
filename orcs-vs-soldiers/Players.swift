//
//  Players.swift
//  orcs-vs-soldiers
//
//  Created by dev1 on 5/11/16.
//  Copyright © 2016 dev1. All rights reserved.
//

import Foundation

class Players: Character {
    private var _name = "Players"
    
    var name: String {
        get {
            return _name
        }
    }
    
    var type: String {
        return "Unskilled"
    }
    
    convenience init(name: String, hp: Int, attackPwr: Int) {
        self.init(startingHp: hp, attackPwr: attackPwr)
        _name = name
    }
}