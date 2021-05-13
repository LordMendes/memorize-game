//
//  MemorizzeApp.swift
//  Memorizze
//
//  Created by Lucas Mendes on 06/05/21.
//

import SwiftUI

@main
struct MemorizzeApp: App {
    var game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
