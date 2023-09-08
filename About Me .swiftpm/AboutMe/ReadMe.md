Kullandigim kodlar 

HomePage icin --> @State private var usName : String =" " --> burada direk string diye bir variable ozel sadece onu update edebilecegim bir yer tanimladim. 
Sonradan Text te -->   Text("Welcome, \(usName)!") bunu yazarak textfield icerisine ismini yazan kisinin gorunmesini sagladim (virgul sonrasi kod ile)
$usName --> para isaretini kullanarata yukarida usName olarak tanimladigim seyi bind ettim bu sayede tetfield yazilan sey yukarida welcome yerine yansidi 

Ikinci sayfada, little quotes bolumu icin: 

bir variable tanimladim (ki bu let ile yazilabilirdi, cunku constant bir sey) 
sonradan yine sadece o variable degistirebilecegim @State kullanarak bir variable belirledim o da direk Stoto = "" (bos biraktim oyle initialize ettim) 
Button kullanarak, sonradan, Stoto =allSt diyerek variable tanimladigim sey ile update etmek istedigim seyi tekabul ettigini belirttim. 
.randomElement() ?? "Finito" kullanarakta yukarida verdigim quotelarin random bir sekilde kullanilciya verilmesini sagladim. 

Diger sayfalarda da bu yukarida bahsettigim ozelliklerin aynisini kullanarak 2 tane daha tabview yaptim. 
