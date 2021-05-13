//
//  EmojiMemoryGame.swift
//  Memorizze
//
//  Created by Lucas Mendes on 12/05/21.
//

import SwiftUI


class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👹","👺","👽","🤡"]
        return MemoryGame<String>(numberOfPairOfCards: 4) { pairIndex in
            return emojis[pairIndex]
        }
    }
    //MARK: - access to the model
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
