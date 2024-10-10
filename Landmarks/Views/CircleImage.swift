

import SwiftUI

// A view that displays an image in a circular shape with a white border and shadow.
struct CircleImage: View {
    var image: Image // The image to be displayed in a circular format
    
    var body: some View {
        image
            .clipShape(Circle()) // Clips the image to a circular shape
            .overlay {
                Circle().stroke(.white, lineWidth: 4) // Adds a white border around the circle
            }
            .shadow(radius: 7) // Adds a shadow effect to the image
    }
}

#Preview {
    CircleImage(image: Image("turtlerock")) // Preview the CircleImage with a sample image
}
