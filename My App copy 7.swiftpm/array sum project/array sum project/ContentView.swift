import SwiftUI

struct ContentView: View {
    @State private var target = 10
    let numberRect = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    let randomEl1 = Int.random(in: 1...10)
    let randomEl2 = Int.random(in: 1...10)
    @State private var result = 0
    
    var body: some View {
        HStack {
            // 9 tane rectangle koydum buraya, ustlerinede sayilari yerlestirmek icin overlay
            ForEach(0..<9) { index in
                Rectangle()
                    .stroke(Color.black, lineWidth: 2)
                    .overlay(Text("\(numberRect[index])")
                    .background(result == target ? Color.green : Color.red))
            }// eger result targetima esitse green olacak, degilse red
        }
        Button("Calculate") {
            result = calcSum()
        }//buttona bastiginda user func calcSum baslatacak burada da rectanglerin rengini degistirecek
    }
    
    func calcSum() -> Int {
        let sum = randomEl1 + randomEl2
        return sum
    }// burada da yazilan function var --> tam olarak arrayden yapamadim, onun yerine randomInt kullanacak 1-9 olan numberlarin secilmesini sagladim (onun variableini yukarida tanimadim)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
