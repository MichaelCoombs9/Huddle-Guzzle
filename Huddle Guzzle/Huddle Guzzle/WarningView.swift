//
//  WarningView.swift
//  Huddle Guzzle
//
//  Created by Michael Coombs on 2023-10-25.
//

import SwiftUI



struct WarningView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State private var isAgreeing = false  // State variable to track navigation

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
                    .frame(width: 300, height: 450)
                    .overlay(
                        VStack {
                            Text("Before you start...")
                                .bold()
                                .foregroundColor(colorScheme == .dark ? .black : .black)
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .offset(y: -50)
                            Image("18Plus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                            Text("Everyone playing is over the age of 18\n")
                                .foregroundColor(colorScheme == .dark ? .black : .black)
                            Image("Skull")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70, height: 70)
                            Text("Everyone playing will drink responsibly")
                                .foregroundColor(colorScheme == .dark ? .black : .black)
                        })
                        .font(.system(size: 16))
                        .multilineTextAlignment(.center)
                        .padding()
                        .shadow(radius: 10)
                
                

                        
                        
                        
                // "AGREE" Button with NavigationLink
                NavigationLink(destination: DetailView(), isActive: $isAgreeing) {
                    EmptyView()
                }
                .hidden()  // The NavigationLink is activated programmatically
                
                Button(action: {
                    // Set isAgreeing to true to trigger navigation
                    isAgreeing = true
                }) {
                    Text("AGREE")
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
            
            struct WarningView_Previews: PreviewProvider {
                static var previews: some View {
                    WarningView()
                    
                }
            }




#Preview {
    WarningView()
}
