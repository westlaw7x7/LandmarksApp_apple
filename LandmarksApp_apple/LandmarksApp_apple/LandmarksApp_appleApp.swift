//
//  LandmarksApp_appleApp.swift
//  LandmarksApp_apple
//
//  Created by Alexander Grigoryev on 25.02.2022.
//

import SwiftUI

@main
struct LandmarksApp_appleApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
