

import SwiftUI
// A view that displays a list of landmarks
struct LandmarkList: View {
    @Environment(ModelData.self) var modelData // Access to the model data
    @State private var showFavoritesOnly = false // State variable to filter favorites
    // Filter landmarks based on the favorites toggle
    var filteredLandmarks: [Landmark]{
        modelData.landmarks.filter{
            landmark in (landmark.isFavorite || !showFavoritesOnly)
        }
    }
    var body: some View {
        NavigationSplitView {
            
            List{
                // Toggle to show only favorite landmarks
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                    
                }
                // Display each filtered landmark in a navigation link
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                
            }.animation(.default, value: filteredLandmarks) //Animated changes in the list
            .navigationTitle("Landmarks") // Set the title for the navigation bar
        }
        
        detail: {
            Text("Select a Landmark") // Placeholder for detail view
            }
        }
    
}

#Preview {
    LandmarkList().environment(ModelData()) // Preview with model data environment
}
