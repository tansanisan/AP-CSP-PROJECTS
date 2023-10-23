import SwiftUI

struct ContentView: View {
    
    // burada direk kullanilacak variable ve iteration icin listemi tanimladim
    @State private var height: Double = 0
    @State private var weight: Double = 0
    @State private var textResult: String = ""
    @State private var category: String = ""
    @State private var results: [String] = []

    var body: some View {
        NavigationView {
            VStack {
                
                // burada app acilinca neler gorulecegine dair olay var
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, welcome to health app")
                    .padding()
                Text("To learn more about how to have a balanced diet enter your values:")
                    .padding()
// burada user height, weight giriyor $ sign o yuzden var
                TextField("Height (in cm)", value: $height, formatter: NumberFormatter())
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                TextField("Weight (in kg)", value: $weight, formatter: NumberFormatter())
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
// buradaki buttona basinda kisi bmi ogreniyor, ve ona gore nasil bakmasi gerektigini ogreniyor -- bir health app gibi yaptim
                Button("Calculate BMI") {
                    let result = bmiCalc(weight: weight, height: height)
                    textResult = "BMI: \(result)"

                    if result <= 18.4 {
                        category = "Underweight , consult a healthcare professional: Before making any significant changes to your diet or exercise routine, it's important to consult with a doctor or a registered nurse "
// burada direk bmi yerlerini gostermek icin koyulan nestedlar var
                      
                    } else if result >= 18.5 && result <= 24.9 {
                        category = "Normal, continue to eat a balanced diet that includes a variety of nutrient-dense foods. Focus on fruits, vegetables, whole grains, lean proteins, and healthy fats. Avoid excessive consumption of processed foods, sugary snacks, and saturated fats."
                       
                    } else if result >= 25.0 && result <= 39.9 {
                        category = "Overweight, To lose weight, you need to consume fewer calories than you burn. A gradual reduction in daily caloric intake, typically 500-1,000 calories less than your maintenance needs, can lead to safe and sustainable weight loss."
                        
                    } else {
                        category = "Obese, incorporate regular physical activity into your routine. A combination of cardiovascular exercise (e.g., brisk walking, cycling) and strength training can help you burn calories and build lean muscle."
                        
                    }
// burada .append kullanarak bmi ve category yazilanlari birlestirdim -- buttona basildiginda ekranda iki sey ayni anda verilecek
                    
                    results.append(textResult + " - " + category)
                }
                .padding()
          
            // burada direk health appim icinde gerekli olan yazilarin empty olmamasini sagladim
                // reference to stackflow gordum
                if !category.isEmpty {
                    Text("Category: \(category)")
                        .padding()
                }
            }
            .padding()
           
// burada bir list olusturdum, bu sayede girilen resultlar gorulebilecek bir data source
            // reference to apple developer dan aldim koduma gore yazdim, baska turlu iteration yapamadim
            
            List(results, id: \.self) { result in
                Text(result)
            }
        }
    }

    // burasi bmi calculate etmek icin yarattigim functionum - her seferinde yapmamak icin
    func bmiCalc(weight: Double, height: Double) -> Double {
        return (weight / (height * height)) * 10000
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
