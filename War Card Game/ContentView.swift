//
//  ContentView.swift
//  War Card Game
//
//  Created by See Sight Tours on 15/04/2024.
//

import SwiftUI

struct ContentView: View {
  
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                      }
                Spacer()
                

                Button(action: {
                    deal() },
                    label: {
                    Image("button")
                                 })
                
                Spacer()
                HStack{
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            
                            }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                          }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()

            }
        }
        
        
    }
    
    func deal() {
        // Randomize the players Card
        var playerCardvalue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardvalue)
        
        //Randomize the cpu Card
        var cpuCardvalue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardvalue)
        
        //Update Scores
        if playerCardvalue > cpuCardvalue {
            playerScore += 1
        }
        else if cpuCardvalue > playerCardvalue {
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
