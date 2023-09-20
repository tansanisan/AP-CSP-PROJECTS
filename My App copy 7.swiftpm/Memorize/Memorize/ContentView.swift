import SwiftUI

struct ContentView: View {
    let emojis = ["😍", "🤪", "😚", "🤩", "😆", "🧐", "🥳", "🙁", "😩", "🥺", "😭", "😡"]
    @State var countCard: Int = 4

    var body: some View {
        VStack {
            ScrollView{
            cardAdjusters
                .imageScale(.large)
                .font(.largeTitle)
                .padding()
            cards
        }
    }
    
    func cardCountAdjuster(by offset: Int, symbol: String) -> some View {
        Button(action: {
            countCard += offset
        }) {
            Image(systemName: symbol)
        }
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach(0..<countCard, id: \.self) { index in
                CardView(content: emojis[index])
                    .foregroundColor(.pink)
            }
        }
    }

    var cardAdjusters: some View {
        VStack {
            HStack {
                cardCountAdjuster(by: -1, symbol: "rectangle.stack.badge.minus.fill")
                Spacer()
                cardCountAdjuster(by: 1, symbol: "rectangle.stack.fill.badge.plus")
            }
            .imageScale(.large)
            .font(.largeTitle)
            .padding()
        }
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = true

    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12.0)

            if isFaceUp {
                base
                    .fill()
                    .overlay(
                        base.strokeBorder(Color.black, lineWidth: 2)
                            .background(Color.white)
                    )

                Text(content).font(.largeTitle)
                
            }
                .opacity(isFaceUp ? 0 : 1 )
            base.fill().opacity(isFaceUp ? 0 : 1 )
            else {

            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
