//
//  ContentView.swift
//  GuessingGame
//
//  Created by Lillian Yang on 2021-12-02.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored properties
    
    //The user's current guess
    @State var currentGuess: Double = 50.0
    
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
                // NOTE: Output will not be shown unless this app is run in the "full" simulator
                print("Button was pressed")
            }, label: {
                Text("Submit Guess")
                    .font(.title2)
            })
            .buttonStyle(.bordered)
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
