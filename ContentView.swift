import SwiftUI


struct ContentView: View {
    @State private var input1 = false
    @State private var input2 = false
    @State private var result = true

    //variable tanimladim
    var body: some View {
        VStack {
            Text("NOR Logic Gate Tester")
                .font(.largeTitle)

            Toggle("Input 1", isOn: $input1)
                .padding()

            Toggle("Input 2", isOn: $input2)
                .padding()

            Button("Test NOR Gate") {
                // burada or ile cikan sonucun ile result farkli ise true olacak
                result = !(input1 || input2)
            }
            .padding()

            Text("Result: \(result ? "True" : "False")")
                .font(.title)
        }
        //display edilecek textim
    }
}
