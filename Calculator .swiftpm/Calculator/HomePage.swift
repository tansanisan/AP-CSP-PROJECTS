import SwiftUI

struct ToggleExample: View {
    @State private var isToggled = false
    
    var body: some View {
        VStack {
            Text("Toggle Example")
                .font(.title)
            
            Toggle("Toggle Me", isOn: $isToggled)
                .padding()
            
            Text("Is Toggled: \(isToggled ? "On" : "Off")")
                .font(.headline)
        }
    }
}

struct ToggleExample_Previews: PreviewProvider {
    static var previews: some View {
        ToggleExample()
    }
}
