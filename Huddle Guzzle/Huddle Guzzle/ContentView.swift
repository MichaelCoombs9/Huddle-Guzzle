//
//  ContentView.swift
//  Huddle Guzzle
//
//  Created by Michael Coombs on 2023-10-20.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        
        NavigationView {
            NavigationLink(destination: DetailView().navigationBarBackButtonHidden()) {
                
                ZStack {
            LinearGradient(gradient: Gradient(colors: [
                Color(hex: "#7Dcfb"),
                Color(hex: "#00b2c"),
            ]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            

                    VStack {
                        Image("HuddleGuzzleNoText")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 350,
                                   height: 350)
                            .foregroundColor(.white)
                            .shadow(radius: 50)
                            .offset(y: 150)
                        
                        
                        Image("HuddleGuzzleText")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 350, height: 350)
                            .foregroundColor(.white)
                            .shadow(radius: 50)
                            .offset(y: -40)
                        
                        Image("TapHereText") // Replace with your image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .foregroundColor(.white)
                            .shadow(radius: 50)
                            .scaleEffect(isAnimating ? 1.3 : 1.0)
                            .offset(y: -200)
                            
                        Spacer()
                    }
                    .navigationBarHidden(true)
                    .onAppear {
                        withAnimation(Animation.easeInOut(duration: 1.5).repeatForever()) {
                            self.isAnimating.toggle()
                        }
                    }
                }
            }
        }
    }
}





#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}




extension Color {
    // Extension to create a Color from a hex string
    init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        self.init(
            .sRGB,
            red: Double((rgb & 0xFF0000) >> 16) / 255.0,
            green: Double((rgb & 0x00FF00) >> 8) / 255.0,
            blue: Double(rgb & 0x0000FF) / 255.0,
            opacity: 1.0
        )
    }
}
