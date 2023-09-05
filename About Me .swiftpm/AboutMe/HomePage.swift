import SwiftUI

struct HomePage: View {
    @State private var usName: String = ""
    
    var body: some View {
        VStack {
            
            
            
            Text("Welcome, \(usName)!")
                .font(Font.custom("Times New Roman", size: 30))
                .foregroundColor(.black)
                .background(
                    Image("HomePage").opacity(0.7))

            
            TextField("Enter your name", text: $usName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(30)
            
            
            Text("Press one of the buttons to learn about your story!")
                .padding(50)
                .font(Font.custom("Times New Roman" , size: 20)
                
            
            )
        }
    }
}



