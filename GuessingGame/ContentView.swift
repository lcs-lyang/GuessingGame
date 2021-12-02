//
//  ContentView.swift
//  GuessingGame
//
//  Created by Lillian Yang on 2021-12-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            Slider(value: .constant(61.0),
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
                Text("\(61)")
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
