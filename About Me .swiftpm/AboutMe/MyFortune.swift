import SwiftUI

struct MyFortune: View {
    @State private var selectedFortune: String = ""
    
    var body: some View {
        let fortunes = [
            "Amidst the winds of change, may you find the strength to navigate the unknown. Embrace challenges as opportunities, and let your resilience illuminate your path. Remember, every ending is a new beginning in disguise. " ,
            
            "Your journey is guided by the stars, and your potential knows no bounds. Trust in yourself, for within you lies the power to shape your destiny.",
            
            "In the garden of life, may you sow seeds of kindness and reap a harvest of joy.In the garden of life, may you sow seeds of kindness and reap a harvest of joy." ,
            
            "Embrace each moment as a precious gift, and let gratitude be your compass. Challenges will be the stepping stones to your success, and setbacks mere setups for comebacks. " ,
            
            "Keep your heart open and your spirit unbreakable, for your journey is a masterpiece in the making.",
            
            "Waves of opportunity are on the horizon, ready to carry you to new shores of achievement.Waves of opportunity are on the horizon, ready to carry you to new shores of achievement." ,
            
            "Believe in the magic within you, for it has the power to turn dreams into reality. Embrace change with a fearless spirit, and let your intuition be your guide. " ,
            
            "Remember that the present is a gift, and your future is a canvas awaiting your vibrant strokes. Embrace the adventure that lies ahead."
        ]
        
        VStack {
            Text("Your future lies within this heart")
                .padding()
                .background(.white)
                .font(Font.custom("Times New Roman", size: 20))
            
            Button(action: {
                selectedFortune = fortunes.randomElement() ?? ""
            }) {
                Image(systemName: "heart.fill")
                   
                    .padding()
                    .foregroundColor(.red)
                    .font(.title)
            }
            
            Text(selectedFortune)
                .font(Font.custom("Times New Roman", size: 18))
                .padding(15)
                
                .multilineTextAlignment(.center)
                
        } 
        .background(Image("PastelGr").opacity(0.9))
    }
    
}

