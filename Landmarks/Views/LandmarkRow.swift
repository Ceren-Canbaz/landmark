import SwiftUI
// A row that displays landmark's name, image and favorite state.
struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View{
        // Displays image, name and favorite state horizontally
        HStack {
            landmark.image
                .resizable()// Allows the image to be resized to fit the specified frame
                .frame(width:50,height:50)
            Text(landmark.name)
            Spacer() // Seperator
            if landmark.isFavorite{
                Image(systemName: "star.fill" ).foregroundColor(.yellow)
            }
        }
    }
}
#Preview {
    let landmarks = ModelData().landmarks // Access the landmarks from the model data
    return Group {
        // Preview the LandmarkRow with two different landmarks
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}

