import SwiftUI
import MapKit

// A view that displays a map centered on a specified coordinate.
struct MapView: View {
    var coordinate: CLLocationCoordinate2D // The geographic coordinate to center the map

    var body: some View {
        Map(position: .constant(.region(region))) // Displays the map at the defined region
    }

    // Computes the region to be displayed on the map
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate, // Center of the map
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2) // The visible area of the map
        )
    }
}

#Preview {
    // Preview the MapView with a sample coordinate
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
