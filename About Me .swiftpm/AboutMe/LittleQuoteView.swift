import SwiftUI

struct LittleQuoteView: View {
  

            
            
            var allSt =
            [
                "In the garden of life, even the loneliest flower can bloom with its own unique beauty." ,
                "Remember, stars shine brightest in the darkest of skies." ,
                "Loneliness is just a temporary cloud passing through the vast sky of your life." ,
                "Your presence has the power to light up a room, even if it's only you in it for now." ,
                "Every day is a chance for new connections and unexpected joys." ,
                "Embrace your solitude, for within it lies the opportunity to truly know and love yourself." ,
                "The right people will find their way into your life, bringing with them the companionship you deserve." ,
                "You are never truly alone when you carry the warmth of your own kindness within your heart." ,
                "Just as a single candle can dispel the darkness, a single positive thought can dispel loneliness." ,
                "Your journey is uniquely yours, and every step you take brings you closer to a brighter destination."
            ]
            
            
            @State private var Stoto = ""   
            var body: some View {
                VStack {
                    
                    Text("Little Quotes")
                        .padding()
                        .italic()
                        .font(Font.custom("Times New Roman", size: 40))
                        
                       
                    
                    Text(Stoto)
                        .padding()
                        .font(Font.custom("Times New Roman", size: 20))
                    
                        .padding()
                    
                    Button("Press to Unlock Your Quote") {
                   
                        Stoto = allSt.randomElement() ?? "Finito"
                    }
                    .padding()
                    
                }
                .background(Image("Purple").opacity(0.6))
                
                
               
                  
            }
        }

