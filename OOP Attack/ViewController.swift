//
//  ViewController.swift
//  OOP Attack
//
//  Created by David Stroud on 04/02/2016.
//  Copyright © 2016 David Stroud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var player2man: UIImageView!
    @IBOutlet weak var player1ogre: UIImageView!
    @IBOutlet weak var outputLbl: UILabel!
    @IBOutlet weak var player1HpLbl: UILabel!
    @IBOutlet weak var player2HpLbl: UILabel!
    
    @IBAction func player1AttackBtnPressed(sender: UIButton!) {
        print("Tapped button")
    }
    
    @IBAction func player2AttackBtnPressed(sender: UIButton!) {
        print("Tapped button")
    }
    
    var player1: Character!
    var player2: Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player1 = Character(name: "David", startingHp: 120, cash: 100, attackPower: 20)
        player2 = Character(name: "Bea", startingHp: 100, cash: 80, attackPower: 18)
        
        player1HpLbl.text = "\(player1.name): \(player1.hp) HP"
        player2HpLbl.text = "\(player2.name): \(player2.hp) HP"

    
    }


}

