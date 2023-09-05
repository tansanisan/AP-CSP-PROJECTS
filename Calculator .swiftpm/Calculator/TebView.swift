import SwiftUI

struct TebView: View {
    var body: some View {
        TabView {
            Summation()
            
                .tabItem {
                    Label("Sum", systemImage: "person")
                }
            
          
            Substraction()
                .tabItem {
                    
                    Label("-" , systemImage: "heart.fill")
                }
            
            Multiplication()
                .tabItem {
                    
                    Label("x" , systemImage: "heart.fill")
                }
            
            Division()
                .tabItem {
                    
                    Label("/" , systemImage: "cloud")
                }
        }
    }
}
    

            
