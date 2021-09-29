//
//  ViewController.swift
//  caredGameForMemory
//
//  Created by Дима Деревянко on 29.09.2021.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0
    
    @IBOutlet weak var flipCountLable: UILabel!
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount+=1
        flipCountLable.text = "Flips: \(flipCount)"
        flipCard(withEmoji: "🐭", on: sender)
    }
    @IBAction func touchSecodCard(_ sender: UIButton) {
        flipCount+=1
        flipCountLable.text = "Flips: \(flipCount)"
        flipCard(withEmoji: "🦊", on: sender)
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

