import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    @State private var firstCircleColor: Color = .blue
    @State private var secondCircleColor: Color = .yellow
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 300, height: 300)
            
            Circle()
                .foregroundColor(firstCircleColor)
                .frame(width: 100, height: 100)
                .position(x: 150, y: 400) 
            
            
            Circle()
                .foregroundColor(secondCircleColor)
                .frame(width: 100, height: 100)
                .position(x: 290, y: 400) 
            
            
            Rectangle()
                .frame(width : 230, height: 50)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .position(x: 220, y : 500)
        }
        
        
        VStack {
            Button("Red 1 ") {
                firstCircleColor = .red
               
            }
            
            Button("Red 2 ") {
               
                secondCircleColor = .red
            }
            
            Button("Green") {
                firstCircleColor = .green
                secondCircleColor = .green
            }
            
            Button("Blue") {
                firstCircleColor = .blue
                secondCircleColor = .blue
                
            }
        }
        
        VStack {
            Button("Orange") {
                secondCircleColor = .orange
                firstCircleColor = .orange
            }
            
            Button("Purple") {
                secondCircleColor = .purple
                firstCircleColor =  .purple
            }
            
            Button("Pink") {
                secondCircleColor = .pink
                firstCircleColor = .pink
            }
        }
    }
    
}

