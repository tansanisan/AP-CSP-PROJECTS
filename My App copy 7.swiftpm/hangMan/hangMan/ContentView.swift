import SwiftUI

var imageH = [1, 2, 3, 4, 5, 6]
let letter = ["B", "A", "G"]
var winCount = 0
var loseCount = 0
let winnerLoser = [7, 8 ]

struct ContentView: View {
    @State private var userInput: String = ""

    var body: some View {
        VStack {
            Text("Hang Man Game ")
            TextField("Input your letter", text: $userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            ForEach(letter, id: \.self) { word in
                if letter.contains(userInput) {
                    Text("True")
                        .foregroundColor(Color.blue)
                    winCount += 1
                } else {
                    Text("\(imageH)")
                    loseCount += 1
                }
            }

            if winCount == 3 {
                Text("You win")
                Text(winnerLoser : [7]
            } else if loseCount == 6 {
                Text("You lose")
                    Text(winnerLoser : [8])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
