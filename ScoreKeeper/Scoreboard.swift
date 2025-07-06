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
    var doesHighestScoreWin: Bool = true
    
    var winners: [Player] {
        guard state == .gameOver else { return [] }
        
        var winningScore = 0
        if doesHighestScoreWin {
            winningScore = Int.min
            for player in players {
                winningScore = max(player.score, winningScore)
            }
        } else {
            winningScore = Int.max
            for player in players {
                winningScore = min(player.score, winningScore)
            }
        }
        
        return players.filter { player in
                player.score == winningScore
        }
    }
    
    mutating func resetScores(to newValue: Int) {
        for index in 0..<players.count {
            players[index].score = newValue
        }
    }
}
