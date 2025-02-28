//
//  ContentView.swift
//  HelloWorld
//
//  Created by Myung Woo on 2/24/25.
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
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, minhvu!").fontWeight(.light)
//                .font(.system(.title, design: .rounded))
//        }
//        .padding()
        
        VStack {
            Button {
                
                speak(text: "Hello World")
                
            } label: {
                Text("Hello World")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .rounded))
            }
            .padding()
            .foregroundStyle(.white)
            .background(.purple)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            
            Button {
                
                speak(text: "Hello Minh Vu")
                
            } label: {
                Text("Hello Minh Vu")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .rounded))
            }
            .padding()
            .foregroundStyle(.white)
            .background(.purple)
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
}

#Preview {
    ContentView()
}
