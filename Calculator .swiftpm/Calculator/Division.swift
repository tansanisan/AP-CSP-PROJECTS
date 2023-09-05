import SwiftUI


struct Division: View {
    @State private var Res4 : String = ""
    @State private var Div1 : String = ""
    @State private var Div2 : String = ""
    
    var body: some View {
        VStack {
            
            Image(systemName: "function")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .padding(15)
            
            Text("Let's Divide ")
                .font(Font.custom("Times New Roman", size :18))
                .padding()
            
            Text("Your value is \(Res4) ")
            
            TextField("Enter Your Value 1" , text : $Div1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(30)
            
            TextField("Enter Your Value 2" , text : $Div2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(30)  
            
            Button("Calculate") {
                
                
                
                if let number1 = Float(Div1), let number2 = Float(Div2) {
                    let Division = number1 / number2
                    
                    Res4 = String(Division)           
                    
                    
                    
                }
                
            }
            
            
        }
    }    
    
}



