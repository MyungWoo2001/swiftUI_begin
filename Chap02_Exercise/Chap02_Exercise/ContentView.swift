//
//  ContentView.swift
//  Chap02_Exercise
//
//  Created by Myung Woo on 3/1/25.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 20) {
            
            VStack {
                Text("Instant Developer")
                    .fontWeight(.medium)
                    .font(.system(size: 40))
                    .foregroundStyle(.white)
                
                Text("Get help from experts in 15 minutes")
                    .foregroundStyle(.white)
            }
            
            HStack(alignment: .bottom, spacing: 10) {
                Image("student")
                    .resizable()
                    .scaledToFit()
                Image("tutor")
                    .resizable()
                    .scaledToFit()
            }
            .padding(.horizontal, 50)
            
            Text("Need help with coding problems? Register!")
                .foregroundStyle(.white)
            
            Spacer()
            
            if verticalSizeClass == .compact {
                HSignUpButtonGroup()
            } else {
                VSignUpButtonGroup()
            }
            
        }
        .padding()
        .background {
            Image("background")
                .resizable()
                .ignoresSafeArea()
                
        }
    }
}

#Preview {
    ContentView()
}

struct HSignUpButtonGroup: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Button {
                
            } label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundStyle(.white)
            .background(.gray)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

struct VSignUpButtonGroup: View {
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Button {
                
            } label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundStyle(.white)
            .background(.gray)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}
