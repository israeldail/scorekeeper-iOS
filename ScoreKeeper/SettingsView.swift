//
//  SettingsView.swift
//  ScoreKeeper
//
//  Created by Israel Dail on 7/6/25.
//

import SwiftUI

struct SettingsView: View {
    @Binding var startingPoints: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Game Rules")
                .font(.headline)
            Divider()
            Picker("Starting points", selection: $startingPoints) {
                Text("0 starting points")
                    .tag(0)
                Text("10 starting points")
                    .tag(10)
                Text("20 strating points")
                    .tag(20)
            }
            .padding()
            .background(.thinMaterial, in: .rect(cornerRadius: 10.0))
        }
        .padding()
    }
}


#Preview {
    @Previewable @State var startingPoints: Int = 0
    SettingsView(startingPoints: $startingPoints)
}
