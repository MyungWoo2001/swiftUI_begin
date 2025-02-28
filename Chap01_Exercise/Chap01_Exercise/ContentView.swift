//
//  ContentView.swift
//  Chap01_Exercise
//
//  Created by Myung Woo on 2/25/25.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    let synthesizer = AVSpeechSynthesizer()
    
    func speak(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(identifier: "com.apple.speech.synthesis.voice.Fred")
        synthesizer.speak(utterance)
    }
    
    var body: some View {
        VStack {
            Text("Guess These Movies")
                .fontWeight(.bold)
                .font(.system(.title,design: .rounded))
            Text("Can you guess the movie from these emojis? \n Tap the button to find out the anwser")
                .multilineTextAlignment(.center)
            Button {
                speak(text: "Home Alone")
            } label: {
                Text("🎄🎄🎄🎄🎄")
            }
            .padding()
            .background(.green)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            Button {
                speak(text: "Fast and Furious")
            } label: {
                Text("🚗🚗🚗🚗🚗")
            }
            .padding()
            .background(.yellow)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            Button {
                speak(text: "Spider man")
            } label: {
                Text("🕷️🏃🏻🏃🏻🏃🏻🏃🏻")
            }
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            Button {
                speak(text: "The penguins of Madagascar")
            } label: {
                Text("🐧🐧🐧🐧🐧")
            }
            .padding()
            .background(.brown)
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
