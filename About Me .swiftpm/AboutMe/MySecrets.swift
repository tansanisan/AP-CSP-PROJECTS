import SwiftUI

struct MySecrets: View {
    @State private var Sec = ""
    
    var body: some View {
        
        let secrets = [
            "I once pretended to be sick to avoid a family gathering, but I was actually attending a concert.",
            
            "I have a secret stash of chocolates hidden in a drawer that nobody knows about.",
            
            "I used to write anonymous love letters to my crush, but I never had the courage to send them.",
            
            "I accidentally broke a friend's favorite mug and replaced it with an identical one, hoping they would never notice.",
            "I once lied about having read a book that everyone was talking about, just to fit in.",
            
            "I have a hidden social media account where I post my artwork anonymously because I'm too shy to share it with my real identity.",
            
            "I once got locked out of my own apartment and had to climb through a window to get back in.",
            
        ]
        
         VStack {
            Text("Some secrets are meant to be spicyy!!")
                .padding()                
                .font(Font.custom("Times New Roman", size: 35))
                .padding(15)
                .background(
                    Image("MySecrets")
                        .opacity(0.5) 
                )
                .multilineTextAlignment(.center)
            
            Text(Sec)
                .padding(20)
                .font(Font.custom("Times New Roman", size: 20))
            
            Button(" Press for more spice!") {
                Sec = secrets.randomElement() ?? "Finito"
                   
            }
        }
    }
}
