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
    
    
    var emojiChoices = ["🐭","🦊","🐼","🐮","🐸","🐹","🐨","🐔","🦄","🐥"]
    var emojiDictionari = [Int:String]()
    func emojiIdentyfier(for card: Card)-> String{
        if emojiDictionari[card.identifire] == nil{
            let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
            emojiDictionari[card.identifire] = emojiChoices.remove(at: randomIndex)
        }
        return emojiDictionari[card.identifire] ?? "?"
    }
    
    func updateViewFromModel(){
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cadrs[index]
            if card.isFaceUp {
                button.setTitle(emojiIdentyfier(for: card), for: UIControl.State.normal)
                button.backgroundColor = .white
            }else{
                button.setTitle("", for: UIControl.State.normal)
                button.backgroundColor = card.isMatched ? .clear : .orange
            }
        }
        
    }
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount+=1
        if let cardNumber = cardButtons.firstIndex(of: sender){
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
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

