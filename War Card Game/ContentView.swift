//
//  ContentView.swift
//  War Card Game
//
//  Created by Felipe Alves Amodio on 22/02/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard: String = "card13"
    @State var cpuCard: String = "card10"
    @State var playerScore: Int = 0
    @State var cpuScore: Int = 0
    
    var body: some View {
        ZStack
        {
            Image("background-plain")
            
            VStack(spacing: 50) { //using a custom spacing
                //Logo
                Image("logo")
                    .scaledToFit()
                
                //Cards
                HStack (spacing: 50){
                    Image(playerCard)
                        .scaledToFit()
                    Image(cpuCard)
                        .scaledToFit()
                }
                
                //Button
                Button  {
                    dealCards()
                } label: {
                    Image("button")
                        .scaledToFit()
                }
                
                //Score
                HStack(spacing: 80){
                    
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    
                }.foregroundStyle(.white)
                
            }
            .padding()
        }
    }
    
    func dealCards(){
        //Randomize card values
        var playerValue = Int.random(in: 2...14)
        var cpuValue = Int.random(in: 2...14)
        
        //Update the card images
        playerCard = "card" + String(playerValue)
        cpuCard = "card" + String(cpuValue)
        
        //Calculate the score and update the score labels
        if playerValue > cpuValue {
            playerScore += 1
        } else if cpuValue > playerValue {
            cpuScore += 1
        } else {
            playerScore += 0
            cpuScore += 0
        }
    }
}

#Preview {
    ContentView()
}
