import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        HStack {
            CardView(isFaceUp: false)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
        }
                .foregroundColor(.pink)
                .padding()
       
    }
    
    struct CardView : View {
        var isFaceUp : Bool = true
        var body : some View {
           
            ZStack(content: {
                if isFaceUp{
                    RoundedRectangle(cornerRadius: 12.0)
                        .foregroundColor(.white)
                    RoundedRectangle(cornerRadius: 12.0)
                        .strokeBorder(lineWidth: 2)
                    Text("😍").font(.largeTitle)
                }
                else {
                    RoundedRectangle(cornerRadius: 12.0)
                        .foregroundColor(.pink)
                }
            })
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
