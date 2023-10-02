//
//  Mod.swift
//  Reloaded II UI
//
//  Created by Samuel Martins on 01/10/23.
//

import Foundation

struct Mod: Hashable, Identifiable {
    let name: String
    let author: String
    let version: String
    let enabled: Bool
    let imageUrl: String
    let description: String
    let id = UUID()
}
