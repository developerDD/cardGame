//
//  ViewController.swift
//  caredGameForMemory
//
//  Created by Дима Деревянко on 29.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var flipCountLable: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
   lazy var game = Game(numberOfPairsOfCards: (cardButtons.count + 1) / 2)
    var flipCount = 0{
        didSet {
            flipCountLable.text = "Flips: \(flipCount)"
        }
    }
    
    
    var emojiChoices = ["🐭","🦊","🐼","🐭","🦊","🐼"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount+=1
        if let cardNumber = cardButtons.firstIndex(of: sender){
            game.chooseCard(at: cardNumber)
        }
    }
        
    func flipCard(withEmoji emoji: String, on button: UIButton){
       // print("Flip card \(emoji)")
        if button.currentTitle == emoji{
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = .orange
        }else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = .white
        }
        
    }
}

