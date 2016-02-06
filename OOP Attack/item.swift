//
//  item.swift
//  OOP Attack
//
//  Created by David Stroud on 04/02/2016.
//  Copyright © 2016 David Stroud. All rights reserved.
//

import Foundation

class Item {
    
    var _name: String = "An Unidentifiable Object"
    var _value: Int = 0
    var _attackBoost: Int = 0
    var _damageProtection: Int = 0
    
    var name: String {
        get {
            return _name
        }
    }
    
    var value: Int {
        get {
            return _value
        }
    }
    
    var attackBoost: Int {
        get {
            return _attackBoost
        }
    }

    var damageProtection: Int {
        get {
            return _damageProtection
        }
    }
    
    init(name: String, value: Int, attackBoost: Int, damageProtection: Int) {
        self._name = name
        self._value = value
        self._attackBoost = attackBoost
        self._damageProtection = damageProtection
    }
    
}