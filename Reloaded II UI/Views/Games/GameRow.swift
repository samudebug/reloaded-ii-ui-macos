//
//  GameRow.swift
//  Reloaded II UI
//
//  Created by Samuel Martins on 01/10/23.
//

import SwiftUI

struct GameRow: View {
    var game: Game
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: "https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/apps/1687950/2f868d8c16fc357dc7122d440b9de3916e36e6fa.jpg")){ image in
                image.image?.resizable()
                
            }.frame(width: 40, height: 40).padding()
            VStack(alignment:.leading) {
                Text("Persona 5 Royal").font(.title).foregroundColor(.white)
                Text("P5R.exe").font(.caption).foregroundColor(.gray)
            }
            
        }
    }
}

#Preview {
    GameRow(game: Game(name: "Persona 5 Royal", iconUrl: "https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/apps/1687950/2f868d8c16fc357dc7122d440b9de3916e36e6fa.jpg", executablePath: "P5R.exe", mods: [
        Mod(name: "SH Essentials: XInput for Controller Hooks", author: "Sewer56", version: "2.1.5", enabled: true, imageUrl: "https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/apps/1687950/2f868d8c16fc357dc7122d440b9de3916e36e6fa.jpg", description: "Escape the besieging military! Now in Sonic Heroes!"),
        Mod(name: "SH Essentials: XInput for Controller Hooks", author: "Sewer56", version: "2.1.5", enabled: false, imageUrl: "https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/apps/1687950/2f868d8c16fc357dc7122d440b9de3916e36e6fa.jpg", description: "Escape the besieging military! Now in Sonic Heroes!")
    ]))
}
