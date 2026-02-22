//
//  ContentView.swift
//  War Card Game
//
//  Created by Felipe Alves Amodio on 22/02/26.
//

import SwiftUI

struct ContentView: View {
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
                    Image("card2")
                        .scaledToFit()
                    Image("card3")
                        .scaledToFit()
                }
                
                //Button
                Button (action: {
                    print("Button tapped")
                }) {
                    Image("button")
                        .scaledToFit()
                }
                
                //Score
                HStack(spacing: 80){
                    
                    VStack {
                        Text("Player").font(.headline).padding(.bottom)
                        
                        Text("0").font(.largeTitle)
                    }
                    
                    
                    
                    VStack {
                        Text("CPU").font(.headline).padding(.bottom)
                        
                        Text("0").font(.largeTitle)
                    }
                    
                }.foregroundStyle(.white)
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
