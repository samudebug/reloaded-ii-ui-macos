//
//  GamesDetail.swift
//  Reloaded II UI
//
//  Created by Samuel Martins on 01/10/23.
//

import SwiftUI



struct GamesDetail: View {
    @State var mods: [Mod]
    @State private var selectedMod: Mod.ID?
    @State private var action: String?
    var body: some View {
        VStack {
            Table(mods, selection: $selectedMod) {
                TableColumn("Enabled") { mod in
                    if mod.enabled {
                        Image(systemName: "checkmark")
                    }
                    EmptyView()
                }
                TableColumn("Name", value: \.name)
                TableColumn("Author", value: \.author)
                TableColumn("Version", value: \.version)
                
            }.frame(height: 200).padding()
            ModDetail(mod: mods.first(where: {$0.id == $selectedMod.wrappedValue}))
            
        }.navigationTitle("Mods").toolbar {
            ToolbarItemGroup {
                Button {
                    print("Run Application")
                } label: {
                    Label("Run Application", systemImage: "play.fill").labelStyle(.titleAndIcon)
                }.help("Run Application")
                Button {
                    print("Configure Mods")
                } label: {
                    Label("Configure Mods", systemImage: "gearshape.fill").labelStyle(.titleAndIcon)
                }.help("Configure Mods")
                Button {
                    print("Edit Application")
                } label: {
                    Label("Edit Application", systemImage: "pencil").labelStyle(.titleAndIcon)
                }.help("Edit Application")
                
                Menu {
                    Picker("Actions", selection: $action) {
                            Text("Create Shortcut")
                            Text("Load Mod Set")
                            Text("Save Mod Set")
                    }
                }label: {
                    Label("Actions", systemImage: "slider.horizontal.3")
                }
            }

        }
    }
}

#Preview {
    GamesDetail(mods: [
        Mod(name: "SH Essentials: XInput for Controller Hooks", author: "Sewer56", version: "2.1.5", enabled: true, imageUrl: "https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/apps/1687950/2f868d8c16fc357dc7122d440b9de3916e36e6fa.jpg", description: "Escape the besieging military! Now in Sonic Heroes!"),
        Mod(name: "SH Essentials: XInput for Controller Hooks", author: "Sewer56", version: "2.1.5", enabled: false, imageUrl: "https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/apps/1687950/2f868d8c16fc357dc7122d440b9de3916e36e6fa.jpg", description: "Escape the besieging military! Now in Sonic Heroes!")
    ])
}
