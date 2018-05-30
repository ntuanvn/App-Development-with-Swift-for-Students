//
//  Game.swift
//  Apple Pie
//
//  Created by N Tuan on 5/30/18.
//  Copyright © 2018 CUSC. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetter: [String]
    var formattedWord: String {
        var guessedWord: String = ""
        for letter in word {
            if guessedLetter.contains(String(letter).lowercased()) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(character: String) {
        guessedLetter.append(character)
        if !word.lowercased().contains(character) {
            incorrectMovesRemaining -= 1
        }
    }
}
