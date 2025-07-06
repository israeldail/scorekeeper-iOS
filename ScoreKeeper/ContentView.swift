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
        VStack(alignment: .leading) {
            Text("Score Keeper")
                .font(.title)
                .bold()
                .padding(.bottom)
            
            Grid {
                GridRow {
                    Text("Player")
                        .gridColumnAlignment(.leading)
                    Text("Score")
                }
                .font(.headline)
                
                ForEach(0..<players.count, id: \.description) { player in
                    GridRow {
                        TextField("Name", text: $players[player].name)
                        Text("\(players[player].score)")
                        Stepper("\(players[player].score)", value: $players[player].score)
                            .labelsHidden()
                    }
                }
            }
            .padding(.vertical)
            
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
