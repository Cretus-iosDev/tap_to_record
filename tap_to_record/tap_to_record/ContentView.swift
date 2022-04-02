//
//  ContentView.swift
//  tap_to_record
//
//  Created by rutik maraskolhe on 02/04/22.
//
import SwiftUI

struct ContentView: View {
    @State private var animateAquaColor = false
    @State private var animateSkyColor = false
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
            .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Tap to record")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                ZStack {
                    Circle()  // Sky
                        .frame(width: 300, height: 300)
                        .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                        .scaleEffect(animateSkyColor ? 1 : 0.8)
                        .animation(Animation.easeInOut(duration: 0.5).repeatForever(autoreverses: true).speed(2))
                        .onAppear() {
                            self.animateSkyColor.toggle()
                    }
                    
                    Circle()  // Aqua
                        .frame(width: 200, height: 200)
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)))
                        .scaleEffect(animateSkyColor ? 1 : 1.5)
                        .animation(Animation.easeInOut(duration: 0.5).repeatForever(autoreverses: true).speed(3))
                        .onAppear() {
                            self.animateAquaColor.toggle()
                    }
                    
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1)))
                    
                    Capsule()
                        .frame(width: 30, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)))
                    Capsule()
                        .trim(from: 1/2, to: 1)
                        .stroke(style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
                        .frame(width: 40, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)))
                        .rotationEffect(.degrees(180))
                        .offset(y: 4)
                    Rectangle()
                        .foregroundColor(Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 5, height: 20)
                        .offset(y: 40)
                        
                    
                }
            }
        }
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
