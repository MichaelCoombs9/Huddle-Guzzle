//
//  DetailView.swift
//  Huddle Guzzle
//
//  Created by Michael Coombs on 2023-10-20.
//

import SwiftUI



struct DetailView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State private var isAddingPlayer = false  // State variable to track navigation

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [
                Color(hex: "#7Dcfb"),
                Color(hex: "#00b2c"),
            ]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                // Message Box
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(colorScheme == .dark ? .white : .white)
                    .frame(width: 300, height: 150)
                    .overlay(
                        VStack {
                            Text("Welcome to ")
                                .foregroundColor(colorScheme == .dark ? .black : .black)
                            Text("Huddle Guzzle")
                                .bold()
                                .foregroundColor(colorScheme == .dark ? .black : .black)
                            Text("the football drinking game!")
                                .foregroundColor(colorScheme == .dark ? .black : .black)
                        })
                        .font(.system(size: 16))
                        .multilineTextAlignment(.center)
                        .padding()
                        .shadow(radius: 1)
                
                

                        
                        
                        
                // "ADD PLAYERS" Button with NavigationLink
                NavigationLink(destination: PlayerView(), isActive: $isAddingPlayer) {
                    EmptyView()
                }
                .hidden()  // The NavigationLink is activated programmatically
                
                Button(action: {
                    // Set isAddingPlayer to true to trigger navigation
                    isAddingPlayer = true
                }) {
                    Text("ADD PLAYER")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.clear)
                        .cornerRadius(15)
                        .shadow(radius: 5)
                        .border(.white, width: 2)
                        .cornerRadius(4)
                        
                }

                Spacer()
            }
            .navigationBarTitle("Detail View", displayMode: .inline)
            .navigationBarHidden(true) // Hide the navigation bar
        }
    }
}
            
            struct DetailView_Previews: PreviewProvider {
                static var previews: some View {
                    DetailView()
                    
                }
            }




#Preview {
    DetailView()
}

