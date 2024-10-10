//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Ceren Canbaz on 30.09.2024.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
