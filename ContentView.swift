import SwiftUI

struct CustomRectangle {
    var colorName: String
    var width: Double
    var height: Double
    var color: Color
}

struct StringRectangles {
    let stringValue: String
    var rectangle: CustomRectangle
}

struct ContentView: View {
    let strings = ["Red", "Green", "Blue", "Yellow", "Purple", "Orange", "Cyan"]
    let colors: [Color] = [.red, .green, .blue, .yellow, .purple, .orange, .cyan]
    
    @State private var stringRectangles: [StringRectangles] = []
    @State private var winScore = 0
    @State private var loseScore = 0
    @State private var attempts = 0
    @State private var gameEnded = false
    
    var body: some View {
        VStack {
            HStack {
                VStack(spacing: 20) {
                    Text("Wins: \(winScore)")
                        .font(.title)
                    Text("Loses: \(loseScore)")
                        .font(.title)
                    VStack(spacing: 20) {
                        ForEach(strings, id: \.self) { string in
                            Text(string)
                                .padding()
                                .background(Color.gray)
                                .onDrag {
                                    NSItemProvider(object: string as NSString)
                                }
                                .disabled(attempts >= 7)
                        }
                    }
                }
                VStack {
                    ForEach(stringRectangles, id: \.stringValue) { stringRect in
                        Rectangle()
                            .frame(width: CGFloat(stringRect.rectangle.width), height: CGFloat(stringRect.rectangle.height))
                            .foregroundColor(stringRect.rectangle.color)
                            .border(Color.black)
                            .onDrop(of: ["public.text"], delegate: RectangleDropDelegate(stringValue: stringRect.stringValue, colorName: stringRect.rectangle.colorName, updateScores: updateScores))
                            .allowsHitTesting(attempts < 7)
                    }
                }
            }
            .padding()
            if gameEnded {
                Text("The game has ended. Restart the game.")
                    .foregroundColor(.red)
                    .font(.title)
                
                Button(action: {
                    restartGame()
                }) {
                    Text("Restart Game")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
        .onAppear {
            setupGame()
        }
    }
    
    func setupGame() {
        for (index, string) in strings.enumerated() {
            let color = colors[index]
            let rect = CustomRectangle(colorName: string, width: 50, height: 50, color: color)
            stringRectangles.append(StringRectangles(stringValue: string, rectangle: rect))
        }
    }
    
    func updateScores(isMatch: Bool) {
        attempts += 1
        
        if isMatch {
            winScore += 1
        } else {
            loseScore += 1
        }
        
        if attempts == 7 {
            gameEnded = true
            print("Game Over")
        }
    }
    
    func restartGame() {
        stringRectangles.removeAll()
        winScore = 0
        loseScore = 0
        attempts = 0
        gameEnded = false
        setupGame()
    }
}

struct RectangleDropDelegate: DropDelegate {
    let stringValue: String
    let colorName: String
    let updateScores: (Bool) -> Void

    func performDrop(info: DropInfo) -> Bool {
        guard let itemProvider = info.itemProviders(for: ["public.text"]).first else { return false }
        
        itemProvider.loadObject(ofClass: NSString.self) { string, error in
            if let droppedString = string as? String {
                let isMatch = droppedString == self.stringValue && self.colorName == droppedString
                DispatchQueue.main.async {
                    updateScores(isMatch)
                }
            }
        }
        return true
    }
    
    func dropEntered(info: DropInfo) {
       
    }
    
    func dropUpdated(info: DropInfo) -> DropProposal? {
       
        return nil
    }
    
    func dropExited(info: DropInfo) {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
