//
//  ViewController.swift
//  OOP-Game-Exercise
//
//  Created by Bryan Ebert on 10/29/15.
//  Copyright © 2015 Bryan Ebert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var p2AtkBtn: UIButton!
    
    @IBOutlet weak var p2AtkBtnLbl: UILabel!
    
    @IBOutlet weak var p1AtkBtn: UIButton!
    
    @IBOutlet weak var p1AtkBtnLbl: UILabel!
    
    @IBOutlet weak var resetBtn: UIButton!
    
    @IBOutlet weak var gameStatusLbl: UILabel!
    
    @IBOutlet weak var p1Img: UIImageView!
    
    @IBOutlet weak var p2Img: UIImageView!
    
    var p1: Knight!
    var p2: Orc!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetGame()
    }
    
    @IBAction func onP2AtkBtnTapped(sender: AnyObject) {
        
        let rand2 = Int(arc4random_uniform(10))
        
        if rand2 == 0 {
            gameStatusLbl.text = "Your attack missed!"
        } else if rand2 == 1 || rand2 == 2 {
            gameStatusLbl.text = "The Knight blocked your attack!"
        } else {
            p1.attemptattack(15)
            gameStatusLbl.text = "Your hit the Knight for 15 HP!"
        }
        
        showp1AtkBtn()
        
        if p1.gameOver {
            gameStatusLbl.text = "You have defeated the Knight!"
            resetBtn.hidden = false
            p1Img.hidden = true
        }
    }
    @IBAction func onP1AtkBtnTapped(sender: AnyObject) {
        
        let rand = Int(arc4random_uniform(10))
        
        if rand == 0 {
            gameStatusLbl.text = "Your attack missed!"
        } else {
            p2.attemptattack(10)
            gameStatusLbl.text = "You hit the Orc for 10 HP!"
        }
        
        showp2AtkBtn()
        
        if p2.gameOver {
            gameStatusLbl.text = "You have defeated the Orc!"
            resetBtn.hidden = false
            p2Img.hidden = true
        }
    }
    @IBAction func onResetBtnTapped(sender: AnyObject) {
        
        p1Img.hidden = false
        p2Img.hidden = false
        resetBtn.hidden = true
        resetGame()
    }
    
    func resetGame() {
        p1 = Knight(name: "Knight", hp: 100, atkpwr: 10)
        p2 = Orc(name: "Orc", hp: 100, atkpwr: 15)
        p1AtkBtn.hidden = false
        showp1AtkBtn()
    }
    
    func showp1AtkBtn() {
        p1AtkBtn.hidden = false
        p1AtkBtnLbl.hidden = false
        p2AtkBtn.hidden = true
        p2AtkBtnLbl.hidden = true
    }
    
    func showp2AtkBtn() {
        p2AtkBtn.hidden = false
        p2AtkBtnLbl.hidden = false
        p1AtkBtn.hidden = true
        p1AtkBtnLbl.hidden = true
    }


}

