//
//  PlayerView.swift
//  Huddle Guzzle
//
//  Created by Michael Coombs on 2023-10-21.
//

import SwiftUI

struct PlayerView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State private var players: [String] = []
    @State private var playerName: String = ""
    @State private var showStartGameButton = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [
                Color(hex: "#7Dcfb"),
                Color(hex: "#00b2c"),
            ]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                // Message Box in PlayerView
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(colorScheme == .dark ? .white : .white)
                    .frame(width: 300, height: 200) // Increased height to accommodate player names
                    .overlay(
                        VStack(spacing: 5) {
                            Text(players.isEmpty ? "Add a new player" : "Add another player")
                                .foregroundColor(colorScheme == .dark ? .black : .black)
                            // Text Input for the new player
                            TextField("Enter Name Here", text: $playerName)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                                .foregroundColor(colorScheme == .dark ? .black : .black)  // Set text color to black
                        })
                    .font(.system(size: 18))
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundColor(colorScheme == .dark ? .white : .white)
                
                // Button Logic
                Button(action: {
                    // Add player to the list
                    if !playerName.isEmpty {
                        players.append(playerName)
                        playerName = ""
                        // Show "START GAME" button if there are at least 2 players
                        showStartGameButton = players.count >= 2
                    }
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
                
                // Show "START GAME" button if there are at least 2 players
                if showStartGameButton {
                    NavigationLink(destination: GameView(players: self.players)) {
                        Text("START GAME")
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
                }
                
                Spacer()
            }
            .navigationBarTitle("Player View", displayMode: .inline)
            .navigationBarHidden(true)
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}






#Preview {
    PlayerView()
}
