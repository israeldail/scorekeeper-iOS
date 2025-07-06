//
//  ScoreKeeperTests.swift
//  ScoreKeeperTests
//
//  Created by Israel Dail on 7/6/25.
//

import Testing
@testable import ScoreKeeper

struct ScoreKeeperTests {
    
    @Test("Reset player scores")
    func resetScores() async throws {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
        var scoreboard = Scoreboard(players: [
            Player(name: "Israel", score: 0),
            Player(name: "Evan", score: 30),
        ])
        scoreboard.resetScores(to: 0)
        
        for player in scoreboard.players {
            #expect(player.score == 0)
        }
    }

}
