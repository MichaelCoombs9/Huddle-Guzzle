// CardView.swift

import SwiftUI

struct CardView: View {
    let gamePrompt: GamePrompt
    let isFlipped: Bool

    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(isFlipped ? .white : .blue)
            .shadow(radius: 10)
            .frame(width: 300, height: 400)
            .animation(isFlipped ? .easeInOut(duration: 1) : .easeInOut(duration: 0)
            )
            .overlay(
                Group {
                    if !isFlipped {
                        VStack {
                            Text(gamePrompt.category.rawValue) // Display category
                                .foregroundColor(.black)
                                .font(.headline)
                                .padding()

                            Image("CardBack")
                                .resizable()
                                .frame(width: 321, height: 422)
                                .shadow(radius: 10)
                                .offset(y: 95)

                            Image("HuddleGuzzleNoText")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250, height: 250)
                                .shadow(radius: 10)
                                .offset(y: -250)
                        }

                    } else {
                        VStack {
                            // Category
                            Text("\(gamePrompt.category.rawValue)") // Display category
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .hidden()
                                .foregroundColor(.green)
                                .padding()
                            if gamePrompt.category == .nextPlay {
                                Image("NextPlay")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:180, height:180)
                                    .shadow(radius: 6)
                                //    .offset(y: -30)
                            }
                           else if gamePrompt.category == .stats {
                                Image("Stats")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:100, height:100)
                                    .shadow(radius: 6)
                             //       .offset(y: -30)
                            }
                            else if gamePrompt.category == .vote {
                                 Image("Vote")
                                     .resizable()
                                     .aspectRatio(contentMode: .fit)
                                     .frame(width:100, height:100)
                                     .shadow(radius: 6)
                                 //    .offset(y: -30)
                             }
                            else if gamePrompt.category == .quiz {
                                 Image("Quiz")
                                     .resizable()
                                     .aspectRatio(contentMode: .fit)
                                     .frame(width:90, height:90)
                                     .shadow(radius: 6)
                                //     .offset(y: -40)
                             }
                            else if gamePrompt.category == .wildCard {
                                 Image("WildCard")
                                     .resizable()
                                     .aspectRatio(contentMode: .fit)
                                     .frame(width:180, height:180)
                                     .shadow(radius: 6)
                                 //    .offset(y: -50)
                             }
                            // Prompt
                            Text(gamePrompt.prompt)
                                .foregroundColor(.black)
                                .font(Font.custom("LilitaOne", size: 18))
                                .multilineTextAlignment(.center)
                                .padding()
                                .lineLimit(nil)
                                .offset(y: -60)
                                .frame(width: 290, height: 200)
                            
                            // Action
                            if gamePrompt.action == "1 Drink" {
                                Image("OneDrink")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 125, height: 125)
                                    .shadow(radius: 2)
                                    .offset(y: -80)
                            } else if gamePrompt.action == "Finish Your Drink" {
                                Image("FinishDrink")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 125, height: 125)
                                    .shadow(radius: 2)
                                    .offset(y: -80)
                            } else if gamePrompt.action == "2 Drinks" {
                                Image("TwoDrink")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 125, height: 125)
                                    .shadow(radius: 2)
                                    .offset(y: -80)
                            } else if gamePrompt.action == "3 Drinks" {
                                Image("ThreeDrink")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 125, height: 125)
                                    .shadow(radius: 2)
                                    .offset(y: -80)
                            }
                            Text("\(gamePrompt.action)") // Display action
                                .foregroundColor(.black)
                                .font(.subheadline)
                                .padding()
                                .offset(y: -130)
                        }
                    }
                }
                .animation(isFlipped ? .easeInOut(duration: 1) : .easeInOut(duration: 0))
            )
            .animation(.easeInOut(duration: 1))
    }
}



//#Preview {
  //  CardView(gamePrompt: <#GamePrompt#>(1), isFlipped: true)
//}
