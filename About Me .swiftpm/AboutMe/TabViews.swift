import SwiftUI

struct TabViews: View {
    var body: some View {
        
        TabView {
            
            HomePage()
            
                .tabItem {
                    Label("Home", systemImage: "person")
                }
            
            LittleQuoteView()
                .tabItem {
                    Label("Quotes", systemImage: "book")
                }
            
            MySecrets()
                .tabItem{
                    Label("Spicy" , systemImage: "eyes")
                }
            
            MyFortune()
                .tabItem{
                    Label("Fortune", systemImage: "ladybug.fill")
                }
        }
    }
    
}
