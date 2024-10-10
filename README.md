# Landmarks App

This project is a SwiftUI application that showcases various landmarks, allowing users to view details and toggle their favorite status. It serves as a practical tutorial for learning SwiftUI concepts and iOS development.

## Features

- **List of Landmarks**: Displays a list of various landmarks with their names and favorite status.
- **Detail View**: Each landmark has a detailed view that includes an image, description, and map location.
- **Favorites Toggle**: Users can filter the list to show only their favorite landmarks.

## Key Concepts

### SwiftUI

- **Views**: The application is structured around SwiftUI views, allowing for a declarative way to build user interfaces. For example, the `ContentView` serves as the main entry point that houses the `LandmarkList`.

- **State and Binding**:
  - **@State**: This property wrapper is used to manage local state within a view. For instance, `showFavoritesOnly` uses `@State` to toggle between showing all landmarks or only favorites.
  - **@Binding**: This property wrapper allows for two-way data binding. For example, in the `FavoriteButton`, a binding to `isFavorite` enables the button to update the favorite status of a landmark.

### Environment

- **@Environment**: This property wrapper is used to access shared data throughout the application. In the `LandmarkList`, it retrieves the `ModelData` to provide access to the list of landmarks.

### Navigation

- **NavigationView and NavigationLink**: These components are used to create a navigable interface. Users can tap on a landmark to navigate to its detailed view.

### MapKit

- **MapView**: Utilizes `MapKit` to display the geographical location of a landmark on a map. The `MKCoordinateRegion` and `MKCoordinateSpan` are used to define the area displayed on the map.

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/Ceren-Canbaz/landmark.git
   ```
2. Open the project in Xcode.
3. Build and run the app on a simulator or physical device.

## Resources

- [SwiftUI Documentation](https://developer.apple.com/documentation/swiftui)
- [iOS Development Tutorials](https://developer.apple.com/tutorials/)
- [Apple's SwiftUI Tutorial](https://developer.apple.com/tutorials/swiftui)

