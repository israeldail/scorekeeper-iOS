//
//  Player.swift
//  ScoreKeeper
//
//  Created by Israel Dail on 7/5/25.
//
import Foundation

struct Player: Identifiable {
    let id = UUID()
    
    var name: String
    var score: Int
}

extension Player: Equatable {
    // check if comparison has same score and name
    static func == (lhs: Player, rhs: Player) -> Bool {
        lhs.name == rhs.name && lhs.score == rhs.score
    }
}
