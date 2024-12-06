//
//  Game.swift
//  ApplePie
//
//  Created by Batch - 2 on 21/10/24.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    var formattedWord: String {
        var gussedWord = ""
        for letter in word {
            if guessedLetters.contains(letter){
                gussedWord += "\(letter)"
            } else {
                gussedWord += "_"
            }
        }
        return gussedWord
    }
    
    mutating func playerGuessed(letter: Character){
        guessedLetters.append(letter)
        if !word.contains(letter){
            incorrectMovesRemaining -= 1
        }
    }

}

