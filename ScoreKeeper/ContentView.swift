//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by Israel Dail on 7/5/25.
//

import SwiftUI

struct ContentView: View {
    @State private var players: [Player] = []
    
    var body: some View {
        VStack {
            ForEach(0..<players.count, id: \.description) { player in
                TextField("Name", text: $players[player].name)
                Stepper("\(players[player].score)", value: $players[player].score)
            }
            
            Button("Add Player", systemImage: "plus") {
                players.append(Player(name: "", score: 0))
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
