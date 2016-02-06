//
//  weapon.swift
//  OOP Attack
//
//  Created by David Stroud on 04/02/2016.
//  Copyright © 2016 David Stroud. All rights reserved.
//

import Foundation

class Weapon: Item {
    
    convenience override init(name: String, value: Int, attackBoost: Int, damageProtection: Int) {
        self.init(name: name, value: value, attackBoost: attackBoost, damageProtection: damageProtection)
    }
    
}