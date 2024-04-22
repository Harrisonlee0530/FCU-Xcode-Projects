//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Harrison Lee on 2021/3/29.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
