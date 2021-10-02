//
//  Game.swift
//  caredGameForMemory
//
//  Created by Дима Деревянко on 02.10.2021.
//

import Foundation
class Game {
    
    var cadrs = [Card]()
    
    init(numberOfPairsOfCards: Int){
        for _ in 1...numberOfPairsOfCards{
            let card = Card()//создаем карту с идентификатором
            cadrs += [card,card] // запишем в массив пару одинаковых карт (парных)          
        }
        
    }
    
    func chooseCard (at index: Int){
        
        
    }
    
}
