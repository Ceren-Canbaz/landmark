//
//  ContentView.swift
//  Landmarks
//
//  Created by Ceren Canbaz on 30.09.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            MapView().frame(height: 300)
            CircleImage().offset(y:-130).padding(.bottom,-130)
            VStack (alignment:.leading){
                Text("Turtle Rock").font(.title).foregroundColor(.green)
                HStack {
                    Text("Joshua Tree National Park").font(.subheadline).foregroundStyle(.secondary)
                    Spacer()
                    Text("California").font(.subheadline).foregroundStyle(.secondary)
                }
                Divider()
                Text("About Turtle Rock").font(.title2)
                Text("Lorem ipsum dolor sit amet.").font(.body)
                
            }.padding()
            
            Spacer()
        }
        
    }
}

#Preview {
    ContentView()
}
