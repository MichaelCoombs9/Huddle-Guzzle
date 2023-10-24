import SwiftUI
import UIKit

struct GameView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var currentPlayerIndex = 0
    @State private var flippedCount = 0
    @State private var isCardFlipped = false
    @State private var currentPrompt: GamePrompt?
    @State private var isEndingGame = false
    let players: [String]  // Assuming you pass the players from PlayerView

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [
                Color(hex: "#7Dcfb"),
                Color(hex: "#00b2c"),
            ]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)

            VStack {
                // Top section showing the current player's name
                Text("\(players[currentPlayerIndex])")
                    .font(Font.custom("LilitaOne", size: 30))
                    .foregroundColor(.black)
                    .background(Color.clear)
                    .padding()
                    .cornerRadius(15)
                    .shadow(radius: 0)
                    .border(.black, width: 2)
                    .cornerRadius(4)
                    .padding()

                    
                // Card section
                CardView(
                    gamePrompt: currentPrompt ?? getRandomPrompt(),
                    isFlipped: isCardFlipped
                )
                .onTapGesture {
                    // Add haptic feedback
                    let generator = UIImpactFeedbackGenerator(style: .light)
                    generator.impactOccurred()
                    
                    // Handle tap to flip the card and switch to the next player
                    isCardFlipped.toggle()
                    flippedCount += 1

                    if flippedCount == 2 {
                        currentPlayerIndex = (currentPlayerIndex + 1) % players.count
                        flippedCount = 0

                        // Get a new random prompt when switching players
                        currentPrompt = getRandomPrompt()
                    }
                }

                Rectangle() // Add another view (e.g., a rectangle) to guide the layout
                    .foregroundColor(Color.clear) // Make it transparent
                    .frame(height: 25) // Adjust the height as needed

                Spacer()
                
                
                // "END GAME" Button with NavigationLink
                NavigationLink(destination: ContentView().navigationBarBackButtonHidden(), isActive: $isEndingGame) {
                    EmptyView()
                }
                .hidden()  // The NavigationLink is activated programmatically
                
                Button(action: {
                    // Set isAddingPlayer to true to trigger navigation
                    isEndingGame = true
                }) {
                    Text("End Game")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 150, height: 50)
                        .background(Color.clear)
                        .cornerRadius(15)
                        .shadow(radius: 5)
                        .border(.white, width: 2)
                        .cornerRadius(4)
                }
                .padding(.bottom, 20) // Add some padding to the bottom
            }
            .navigationBarBackButtonHidden(true)
        }
    }

    private func getRandomPrompt() -> GamePrompt {
        let randomIndex = Int.random(in: 0..<prompts.count)
        return prompts[randomIndex]
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(players: ["Player1", "Player2"])
    }
}

#Preview {
    GameView(players: ["Player1", "Player2"])
}








