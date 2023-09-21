

//

import SwiftUI

struct ContentView: View {
    @State private var percentage: CGFloat = .zero
    
    var body: some View {
        VStack{
            ZStack{
                
                Group{
                    Path(){path in
                        path.move(to: CGPoint(x:250,y:250))//S
                        path.addLine(to: CGPoint(x: 50, y: 250))//T
                    }
                    .trim(from: 0, to: percentage)
                    .stroke(Color("4C94B6"), style: StrokeStyle(lineWidth: 12.5))
                    .animation(.easeOut(duration: 2.0), value: percentage)
                    
                    Path(){path in
                        path.move(to: CGPoint( x:42.5281451213502,y:242.0237212872177))//E
                        path.addLine(to: CGPoint(x:136.323045660795,y:146.2909095796023))//F
                    }
                    .trim(from: 0, to: percentage)
                    .stroke(Color("BF5662"), style: StrokeStyle(lineWidth: 12.5))
                    .animation(.easeOut(duration: 2.0), value: percentage)
                    
                    Path(){path in
                        path.move(to: CGPoint( x:137.4857923616972,y:124.1987222624603))//K
                        path.addLine(to: CGPoint(x:48.7294608594953,y:37.3803019284286))//L
                    }
                    .trim(from: 0, to: percentage)
                    .stroke(Color("#A7BD86"), style: StrokeStyle(lineWidth: 12.5))
                    .animation(.easeOut(duration: 2.0), value: percentage)
                    
                    Path(){path in
                        
                        path.move(to: CGPoint( x:157.6400685106688,y:90.4790679362962))//M
                        path.addLine(to: CGPoint(x:133.9975522589906,y:36.2175552275264))//N
                    }
                    .trim(from: 0, to: percentage)
                    .stroke(Color("#A7BD86"), style: StrokeStyle(lineWidth: 12.5))
                    .animation(.easeOut(duration: 2.0), value: percentage)
                    
                    Path(){path in
                        path.move(to: CGPoint( x:137.4857923616972,y:244.7367969226562))//Q
                        path.addLine(to: CGPoint(x:170.042699986959,y:40.4809597975011))//R
                    }
                    .trim(from: 0, to: percentage)
                    .stroke(Color("#A7BD86"), style: StrokeStyle(lineWidth: 12.5))
                    .animation(.easeOut(duration: 2.0), value: percentage)
                }
                
                Path(){path in
                    path.move(to: CGPoint( x:254.1480446855521,y:154.8177187195519))//O
                    path.addLine(to: CGPoint(x:168.8799532860568,y:154.4301364859178))//P
                }
                .trim(from: 0, to: percentage)
                .stroke(Color("#A7BD86"), style: StrokeStyle(lineWidth: 12.5))
                .animation(.easeOut(duration: 2.0), value: percentage)
                
                Path(){path in
                    path.move(to: CGPoint( x:260,y:40))//O
                    path.addLine(to: CGPoint(x:175.0812690242019,y:161.7941989249651))//P
                }
                .trim(from: 0, to: percentage)
                .stroke(Color("#A7BD86"), style: StrokeStyle(lineWidth: 12.5))
                .animation(.easeOut(duration: 2.0), value: percentage)
                Path(){path in
                    path.move(to: CGPoint( x:165.3917131833502,y:149.0039852150408))//U
                    path.addLine(to: CGPoint(x:161.1283086133755,y:143.5778339441638))//V
                }
                .trim(from: 0, to: percentage)
                .stroke(Color("#A7BD86"), style: StrokeStyle(lineWidth: 12.5))
                .animation(.easeOut(duration: 2.0), value: percentage)
                
                Path(){path in
                    path.move(to: CGPoint( x:249.1094756483092,y:33.5044795920879))//A1
                    path.addLine(to: CGPoint(x:168.6387067178424,y:128.6232309036296))//B1
                }
                .trim(from: 0, to: percentage)
                .stroke(Color("BF5662"), style: StrokeStyle(lineWidth: 12.5))
                .animation(.easeOut(duration: 2.0), value: percentage)
                
                Path(){path in
                    path.move(to: CGPoint( x:168.2281591613756,y:241.9343564884715))//C
                    path.addLine(to: CGPoint(x:133.3316168616961,y:239.8816187061374))//D
                }
                .trim(from: 0, to: percentage)
                .stroke(Color("D1756E"), style: StrokeStyle(lineWidth: 12.5))
                .animation(.easeOut(duration: 2.0), value: percentage)
                
                Path(){ path in
                    path.move(to: CGPoint( x:45.8849873342638,y:155.3088220739728))//I
                    path.addLine(to: CGPoint(x:118.1413572724238,y:155.7193696304396))//J
                }
                .trim(from: 0, to: percentage)
                .stroke(Color("#A7BD86"), style: StrokeStyle(lineWidth: 12.5))
                .animation(.easeOut(duration: 2.0), value: percentage)
                
                Path(){ path in
                    path.move(to: CGPoint( x:256.9064313582083,y:121.6439224436936))//I
                    path.addLine(to: CGPoint(x:256.9064313582083,y:41.1766013761972))//J
                }
                .trim(from: 0, to: percentage)
                .stroke(Color("D1756E"), style: StrokeStyle(lineWidth: 12.5))
                .animation(.easeOut(duration: 2.0), value: percentage)
                Path(){ path in
                    path.move(to: CGPoint( x:249.1094756483092,y:33.5044795920879))//I
                    path.addLine(to: CGPoint(x:172.3681933887634,y:110.6333440852679))//J
                }
                .trim(from: 0, to: percentage)
                .stroke(Color("BF5662"), style: StrokeStyle(lineWidth: 12.5))
                .animation(.easeOut(duration: 2.0), value: percentage)
                
                Path(){ path in
                    path.move(to: CGPoint( x:135.3843546440302,y:162.6986780903755))//I
                    path.addLine(to: CGPoint(x:168.6387067178424,y:128.6232309036296))//J
                }
                .trim(from: 0, to: percentage)
                .stroke(Color("4C94B6"), style: StrokeStyle(lineWidth: 12.5))
                .animation(.easeOut(duration: 2.0), value: percentage)
                
                
                
            }
            Button("Start Animation"){
                self.percentage = 1.0
            }.buttonStyle(.borderless)
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .frame(width:500, height: 500)
                .background(Color("#F8F9F5"))
        }
    }
}




