//
//  Player1.swift
//  OOP-Game-Exercise
//
//  Created by Bryan Ebert on 10/29/15.
//  Copyright © 2015 Bryan Ebert. All rights reserved.
//

import Foundation

class Knight: Character {
    
    private var _name: String = "Knight"
    
    var name: String {
        get {
            return _name
        }
       
    }
    
    convenience init(name: String, hp: Int, atkpwr: Int) {
        self.init(startinghp: hp, attack: atkpwr)
        
        _name = name
        
    }
}