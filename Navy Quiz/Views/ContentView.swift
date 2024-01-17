// ContentView.swift
// Views

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer() // Pushes everything down
                
                Text("Navy Quiz")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .padding(.top, 150)

                Text("Test your knowledge")
                    .font(.title2)
                    .foregroundColor(.blue)
                    .padding(.bottom, 50)

                Spacer() // Takes up the remaining space

                NavigationLink(destination: QuizView()) {
                    Text("Start Quiz")
                        .bold()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
                .padding(.bottom, 50) // Adds padding at the bottom
                
                Spacer() // Optional, adjusts bottom spacing
            }
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
