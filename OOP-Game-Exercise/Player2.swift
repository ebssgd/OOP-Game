//
//  Player2.swift
//  OOP-Game-Exercise
//
//  Created by Bryan Ebert on 10/29/15.
//  Copyright © 2015 Bryan Ebert. All rights reserved.
//

import Foundation

class Orc: Character {
    
    private var _name2: String = "Orc"
    
    var name2: String {
        get {
            return _name2
        }
    }
    
    convenience init(name: String, hp: Int, atkpwr: Int) {
        self.init(startinghp: hp, attack: atkpwr)
        
        _name2 = name
    }
}