import SwiftUI


struct Multiplication: View {
    @State private var Res3 : String = ""
    @State private var Mul1 : String = ""
    @State private var Mul2 : String = ""
    
    var body: some View {
        VStack {
            
            Image(systemName: "function")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .padding(15)
            
            Text("Let's Multiply ")
                .font(Font.custom("Times New Roman", size :18))
                .padding()
            
            Text("Your value is \(Res3) ")
            
            TextField("Enter Your Value 1" , text : $Mul1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(30)
            
            TextField("Enter Your Value 2" , text : $Mul2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(30)  
            
            Button("Calculate") {
                
                
                
                if let number1 = Float(Mul1), let number2 = Float(Mul2) {
                    let Multiplication = number1 * number2
                    
                    Res3 = String(Multiplication)           
                    
                    
                    
                }
                
            }
            
            
        }
    }    
    
}

