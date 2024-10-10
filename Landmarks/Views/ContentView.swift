import SwiftUI

// Main view of the Landmarks application, displaying the list of landmarks.
struct ContentView: View {
    var body: some View {
        LandmarkList() // Displays the list of landmarks
    }
}

#Preview {
    ContentView().environment(ModelData()) // Preview the ContentView with the model data environment
}
