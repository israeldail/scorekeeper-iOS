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
