//
//  ScoreKeeperTests.swift
//  ScoreKeeperTests
//
//  Created by Israel Dail on 7/6/25.
//

import Testing
@testable import ScoreKeeper

struct ScoreKeeperTests {
    
    @Test("Reset player scores", arguments: [0, 10, 20])
    func resetScores(to newValue: Int) async throws {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
        var scoreboard = Scoreboard(players: [
            Player(name: "Israel", score: 0),
            Player(name: "Evan", score: 30),
        ])
        scoreboard.resetScores(to: newValue)
        
        for player in scoreboard.players {
            #expect(player.score == newValue)
        }
    }

}
