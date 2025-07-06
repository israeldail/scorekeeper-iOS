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
        for index in 0..<players.count {
            players[index].score = newValue
        }
    }
}
