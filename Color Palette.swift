import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView {
                renklidik(color: "Color 1")
                renklidik(color: "Color 2")
                renklidik(color: "Color 3")
                renklidik(color: "Color 4")
                renklidik(color: "Color 5")
                renklidik(color: "Color 6")
                renklidik(color: "Color 7")
                renklidik(color: "Color 8")
                renklidik(color: "Color 9")
                renklidik(color: "Color 10")
            }
            Divider()
            .padding(15)
            HStack{
                ScrollView{
                    renklidik(color: "Color 11")
                    renklidik(color: "Color 12")
                    renklidik(color: "Color 13")
                    renklidik(color: "Color 14")
                    renklidik(color: "Color 15")
                    
                    
                }
                
            }
        }
    }
    
    struct renklidik: View {
        @State private var opacityValue: Double = 1.0
        @State private var satValue :  Double = 1.0
        var color: String
        var body: some View {
            VStack {
                Rectangle()
                    .fill(Color(color))
                    .frame(width: 35.0, height: 35.0)
                    .opacity(opacityValue)
                    .saturation(satValue)
                    .padding()
                
                Slider(value: $opacityValue, in: 0.0...1.0)
                    .padding()
                
                    .frame(width: 200.0, height: 10.0)
                Slider(value: $satValue, in: 0.0...1.0)
                    .padding()
                    .frame(width: 200.0, height: 10.0)
            }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
