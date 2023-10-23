import SwiftUI

struct ContentView: View {
        @State private var numConvert: Int = 0
    // burada direk variable tanimliyorum ve islem yaptirdim
        var quotient: Int {
            return numConvert / 2
        }
    
        var remainder: Int {
            return numConvert % 2
        }
    
        var body: some View {
            VStack {
                Text("Number base converter")
                    .padding()
    // tekrardan kullanici input aliyorum
                TextField("Enter integer", value: $numConvert, formatter: NumberFormatter())
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
    // functionum yaptigi olay buraya display ediyor
                Text(numToBinary())
            }
            .padding()
        }
    
    // burada sayiyi binart yapma islemini yaptim, result bos biraktim, cunku ya bir ya sifir olacak bir sey yapiyoruz
        func numToBinary() -> String {
            var result = ""
            var num = numConvert
    
            while num != 0 {
                if num % 2 == 0 {
                    result = "0" + result
                } else {
                    result = "1" + result
                }
                num /= 2
            }
            return result.isEmpty ? "0" : result
            // burada swift 100 days ogrendigim seyi yaptim , uzun if kullanmak yerine eger result bos ise sifir, degilse result return et dedim.
        }
    
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
    //Binary to number converter page

        

