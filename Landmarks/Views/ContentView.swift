//
//  ContentView.swift
//  Landmarks
//
//  Created by Ceren Canbaz on 30.09.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       LandmarkList()
        
    }
}

#Preview {
    ContentView().environment(ModelData())
}
