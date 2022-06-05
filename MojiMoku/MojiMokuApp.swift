//
//  MojiMokuApp.swift
//  MojiMoku
//
//  Created by Vanness Anthony on 04/06/22.
//

import SwiftUI

@main
struct MojiMokuApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
