//
//  Game.swift
//  caredGameForMemory
//
//  Created by Дима Деревянко on 02.10.2021.
//

import Foundation
class Game {
    
    var cadrs = [Card]()
    
    var indexOneOnlyFaceUpCard: Int?
    
    init(numberOfPairsOfCards: Int){
        for _ in 1...numberOfPairsOfCards{
            let card = Card()//создаем карту с идентификатором
            cadrs += [card,card] // запишем в массив пару одинаковых карт (парных)
        }
        
    }
    
    func chooseCard (at index: Int){
        if !cadrs[index].isMatched{
            if let matchingIndex = indexOneOnlyFaceUpCard, matchingIndex != index {
                if cadrs[matchingIndex].identifire == cadrs[index].identifire {
                    cadrs[matchingIndex].isMatched = true
                    cadrs[index].isMatched = true
                }
                cadrs[index].isFaceUp = true
                indexOneOnlyFaceUpCard = nil
            } else {
                for flipDown in cadrs.indices {
                    cadrs[flipDown].isFaceUp = false
                }
                cadrs[index].isFaceUp = true
                indexOneOnlyFaceUpCard = index
            }
        }
        
    }
    
}
