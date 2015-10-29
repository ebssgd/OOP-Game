//
//  Character.swift
//  OOP-Game-Exercise
//
//  Created by Bryan Ebert on 10/29/15.
//  Copyright © 2015 Bryan Ebert. All rights reserved.
//

import Foundation

class Character {
    
    private var _hp: Int = 100
    private var _atkpwr: Int = 10
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var atkpwr: Int {
        get {
            return _atkpwr
        }
    }
    
    var gameOver: Bool {
        get {
            if hp <= 0 {
                return true
            } else {
                return false
            }
        }
    }
    
    init(startinghp: Int, attack: Int) {
        self._atkpwr = attack
        self._hp = startinghp
    }
    
    func attemptattack(atkpwr: Int) {
        self._hp -= atkpwr
        }
}