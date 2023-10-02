//
//  Game.swift
//  Reloaded II UI
//
//  Created by Samuel Martins on 01/10/23.
//

import Foundation

struct Game: Hashable, Identifiable {
    var name: String
    var iconUrl: String
    var executablePath: String
    var mods: [Mod]
    var id = UUID()
}
