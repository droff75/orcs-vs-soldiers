//
//  ViewController.swift
//  orcs-vs-soldiers
//
//  Created by dev1 on 5/11/16.
//  Copyright © 2016 dev1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var player1Attack: UIButton!
    @IBOutlet weak var player2Attack: UIButton!
    @IBOutlet weak var player1Hp: UILabel!
    @IBOutlet weak var player2Hp: UILabel!
    @IBOutlet weak var messageLbl: UILabel!
    @IBOutlet weak var player1Img: UIImageView!
    @IBOutlet weak var player2Img: UIImageView!
    
    var playerOne: Players!
    var playerTwo: Players!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerOne = Orc(name: "Player 1 the Orc", hp: 100, attackPwr: 30)
        playerTwo = Soldier(name: "Player 2 the Soldier", hp: 300, attackPwr: 10)
        
        player1Hp.text = "\(playerOne.hp) HP"
        player2Hp.text = "\(playerTwo.hp) HP"
    }
    
    @IBAction func onPlayer1Attack(sender: AnyObject) {
        if playerTwo.attemptAttack(playerOne.attackPwr) {
            messageLbl.text = "\(playerOne.name) attacked \(playerTwo.name) for \(playerOne.attackPwr) HP"
            player2Hp.text = "\(playerTwo.hp) HP"
        }
        if !playerTwo.isAlive {
            player2Hp.text = ""
            messageLbl.text = "\(playerOne.name) killed \(playerTwo.name)"
            player2Img.hidden = true
        }
    }
    
    @IBAction func onPlayer2Attack(sender: AnyObject) {
        if playerOne.attemptAttack(playerTwo.attackPwr) {
            messageLbl.text = "\(playerTwo.name) attacked \(playerOne.name) for \(playerTwo.attackPwr) HP"
            player1Hp.text = "\(playerOne.hp) HP"
        }
        if !playerOne.isAlive {
            player1Hp.text = ""
            messageLbl.text = "\(playerTwo.name) killed \(playerOne.name)"
            player1Img.hidden = true
        }
    }
}