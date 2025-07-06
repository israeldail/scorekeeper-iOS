//
//  Scoreboard.swift
//  ScoreKeeper
//
//  Created by Israel Dail on 7/6/25.
//

import Foundation

struct Scoreboard {
    var scores: [Int] = []
    var players: [Player] = []
    
    var state = GameState.setup
    
    mutating func resetScores(to newValue: Int) {
        scores = [newValue]
        players = []
    }
}
