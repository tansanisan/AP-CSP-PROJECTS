import SwiftUI


struct Substraction: View {
    @State private var Res2 : String = ""
    @State private var Sub1 : String = ""
    @State private var Sub2 : String = ""
    
    var body: some View {
        VStack {
            
            Image(systemName: "function")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .padding(15)
            
            Text("Let's Substract ")
                .font(Font.custom("Times New Roman", size :18))
                .padding()
            
            Text("Your value is \(Res2) ")
            
            TextField("Enter Your Value 1" , text : $Sub1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(30)
            
            TextField("Enter Your Value 2" , text : $Sub2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(30)  
            
            Button("Calculate") {
                
                
                
                if let number1 = Float(Sub1), let number2 = Float(Sub2) {
                    let Substraction = number1 - number2
                    
                    Res2 = String(Substraction)           
                    
                    
                    
                }
                
            }
            
            
        }
    }    
    
}

