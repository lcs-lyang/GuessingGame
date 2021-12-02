//
//  ContentView.swift
//  GuessingGame
//
//  Created by Lillian Yang on 2021-12-02.
//For comparing 2 values (if they are equal) you use '==' not one '='. e.g. a == b.
//'a = b' means you are assigning b onto a.

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored properties
    
    //The user's current guess
    @State var currentGuess: Double = 50.0
    
    //The target that we are trying to guess
    //This will produce an tnteger in the range from 1 to 100, inclusive
    let target = Int.random(in: 1...100)
    
    //The feedback to the user as they play
    @State var feedback = "" //Guess
    
    //MARK: Computed properties
    var body: some View {
        
        VStack{
            Slider(value: $currentGuess,
                   in: 0.0...100.0,
                   step: 1.0,
                   label: {
                        Text("Opacity")
            },
                   minimumValueLabel: {
                        Text("0")
            },
                   maximumValueLabel: {
                        Text("100")
            })
                .padding()
            
            HStack{
                Spacer()
                Text("\(String(format: "%.0f", currentGuess))")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.orange)
                    
                
                Spacer()
            }
            
            Button(action: {
              
                //Make the user's guess into an integer
                let currentGuessAsInteger = Int(currentGuess)
                
                //Compare the user's current guess to the target
                if currentGuessAsInteger < target {
                    feedback = "Guess higher next time!"
                } else if currentGuessAsInteger > target {
                    feedback = "Guess lower next time."
                } else {
                    feedback = "You got it!"
                }
                
                
                
                

                
            }, label: {
                Text("Submit Guess")
                    .font(.title2)
            })
            .buttonStyle(.bordered)
            .padding()
            
            Text("The secret target is \(target)")
                .padding()
            
            Text(feedback)
                .bold()
                .italic()
                .padding()

            Spacer()
        }
        .navigationTitle("Guessing Game")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
        
    }
}
