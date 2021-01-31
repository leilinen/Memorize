//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 李琳 on 2021/1/31.
//

import SwiftUI

//func createCardContent(pairIndex: Int) -> String {
//    return "😁"
//}

class EmojiMemoryGame {
    
//    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 2, cardContentFactory: {
//        (pairIndex) in return "😁"
//    })
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "🎃"]
        return MemoryGame<String>(numberOfPairsOfCards: 2) {
            (pairIndex) in return emojis[pairIndex]
        }
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
    
    
}
