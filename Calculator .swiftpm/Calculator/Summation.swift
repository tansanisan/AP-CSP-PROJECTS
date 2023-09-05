import SwiftUI

struct Summation: View {
    @State private var Res : String = ""
    @State private var Sum1 : String = ""
    @State private var Sum2 : String = ""
    
    var body: some View {
        VStack {
            
            Image(systemName: "function")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .padding(15)
            
            Text("Let's Sum ")
                .font(Font.custom("Times New Roman", size :18))
                .padding()
            
            Text("Your value is \(Res) ")
            
            TextField("Enter Your Value 1" , text : $Sum1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(30)
            
            TextField("Enter Your Value 2" , text : $Sum2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(30)  
            
            Button("Calculate") {
                
                
                
                if let number1 = Float(Sum1), let number2 = Float(Sum2) {
                    let summation = number1 + number2
                
                    Res = String(summation)           
                    
                    
                    
                }
                
            }
            
                
            }
        }    
    
}

