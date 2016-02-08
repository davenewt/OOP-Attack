//
//  character.swift
//  OOP Attack
//
//  Created by David Stroud on 04/02/2016.
//  Copyright © 2016 David Stroud. All rights reserved.
//

import Foundation

class Character {
    
    var _hp: Int = 100
    var _name: String = "Player"
    var _cash: Int = 0
    var _attackPower: Int = 10
    var _weapons: [Weapon]? // using ? as may not contain values
    var _armour: [Armour]?
    var _loot: [Loot]?
    
    // computed properties will do what we want to be able to do...
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var name: String {
        get {
            return _name
        }
    }
    
    var cash: Int {
        get {
            return _cash
        }
    }
    
    var attackPower: Int {
        get {
            return _attackPower
        }
    }
    
    var weapons: [Weapon] {
        get {
            if(_weapons?.count != 0) {
                return _weapons!
            } else {
                return [] // return empty array if there's nothing in the array
            }
        }
    }

    var armour: [Armour] {
        get {
            if(_armour?.count != 0) {
                return _armour!
            } else {
                return [] // return empty array if there's nothing in the array
            }
        }
    }
    
    var loot: [Loot] {
        get {
            if(_loot?.count != 0) {
                return _loot!
            } else {
                return [] // return empty array if there's nothing in the array
            }
        }
    }
    
    init(name: String, startingHp: Int, cash: Int, attackPower: Int) {
        self._name = name
        self._hp = startingHp
        self._cash = cash
        self._attackPower = attackPower
        // we won't give new characters any: weapons, armour or loot on init
    }
    
    func attacked(attackPower: Int) -> Bool {
        self._hp -= attackPower
        print("Attack Successful: Opponent HP now \(self._hp)")
        return true // by default, attacks will be successful
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    func dropLoot() -> String? {
        if !isAlive {
            print("Died!")
            return("Loot needs to go here")
        }
        return nil
    }
    
}