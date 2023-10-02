//
//  GamesList.swift
//  Reloaded II UI
//
//  Created by Samuel Martins on 01/10/23.
//

import SwiftUI


struct GamesList: View {
    var games: [Game] = [Game(name: "Persona 5 Royal", iconUrl: "https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/apps/1687950/2f868d8c16fc357dc7122d440b9de3916e36e6fa.jpg", executablePath: "P5R.exe", mods: [
        Mod(name: "SH Essentials: XInput for Controller Hooks", author: "Sewer56", version: "2.1.5", enabled: true, imageUrl: "https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/apps/1687950/2f868d8c16fc357dc7122d440b9de3916e36e6fa.jpg", description: "Escape the besieging military! Now in Sonic Heroes!"),
        Mod(name: "Reloaded File Redirector Monitor", author: "Sewer56", version: "1.0.10", enabled: true, imageUrl: "https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/apps/1687950/2f868d8c16fc357dc7122d440b9de3916e36e6fa.jpg", description: "Reloaded File Redirector Monitor")
    ])]
    @State private var selectedApplication: Game?
    var index: Int? {
            games.firstIndex(where: {$0.id == selectedApplication?.id})
        }
    var body: some View {
        NavigationView {
            List(selection: $selectedApplication) {
                ForEach(games) { game in
                    NavigationLink {
                        GamesDetail(mods: game.mods)
                    } label: {
                        GameRow(game: game)
                    }.tag(game)
                }
            }.navigationTitle("Applications").frame(minWidth: 300).toolbar {
                ToolbarItemGroup {
                    Button {
                        print("add mods")
                    } label: {
                        Label("Add Mods", systemImage: "plus.app")
                    }.help("Add Mods")
                    Button {
                        print("manage mods")
                    } label: {
                        Label("Add Application", systemImage: "gearshape.2")
                    }.help("Add Application")
                }
            }
            Text("Select an Application")
        }
        
    }
}

#Preview {
    GamesList()
}
