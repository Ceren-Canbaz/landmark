

import SwiftUI
// A button that toggles the favorite state, represent by a star icon
struct FavoriteButton: View {
    @Binding var isSet:Bool // Binding to track the favorite state
    var body: some View {
        Button{
            isSet.toggle() // Toggle the favorite state when the button is pressed
        } label: {
            // Display a star icon that changes based on the favorite state
            Label("Toggle Favorite",systemImage: isSet ? "star.fill" : "star").labelStyle(.iconOnly).foregroundColor(isSet ? .yellow : .gray // Change color based on favorite state
            )
        }
        
    }
}
//Preview with the favorite state
#Preview {
    Group{
        FavoriteButton(isSet:.constant(true))
        FavoriteButton(isSet:.constant(false))
    }
    
}
