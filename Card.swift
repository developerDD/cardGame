//
//  Card.swift
//  caredGameForMemory
//
//  Created by Дима Деревянко on 02.10.2021.
//

import Foundation
struct Card {
    
    var isFaceUp = false
    var isMatched = false
    var identifire: Int
    
    static var identifireNumber = 0
    
    static func identifireGenerator()-> Int{
        identifireNumber+=1
        return identifireNumber
    }
    
    init(){
        self.identifire=Card.identifireGenerator()
    }
}
