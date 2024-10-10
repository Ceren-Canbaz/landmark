import SwiftUI


// A view that displays detailed information about a specified landmark
struct LandmarkDetail: View {
    var landmark: Landmark // The landmark data to display


    var body: some View {
        ScrollView {
            //Display the map view with the landmark's coordinates
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)

            // Display the landmark's image in circular frame
            CircleImage(image: landmark.image)
                .offset(y: -130) // Offset the image upwards
                .padding(.bottom, -130) // Adjust bottom padding to overlap the map

            //Displays ui objects vertically
            VStack(alignment: .leading) {
                //Display landmark's name
                Text(landmark.name)
                    .font(.title)

                // Displays UI objects horizontally; that's why the park and state are shown side by side

                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)


                Divider() // Seperator line

                // Section about the landmark
                Text("About \(landmark.name)")
                    .font(.title2)
                // Section about landmark's description
                Text(landmark.description)
            }
            .padding() // Add padding arount the VStack
        }
        .navigationTitle(landmark.name) // Set the navigation title
        .navigationBarTitleDisplayMode(.inline) // Display title inline(inline - automatic - large)
    }
}
#Preview {
    LandmarkDetail(landmark: ModelData().landmarks[0])

}
