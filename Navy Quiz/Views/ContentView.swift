// ContentView.swift
// Views

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer() // Pushes everything to the middle

                Text("Navy Quiz")
                    .font(.largeTitle)
                    .foregroundColor(.accentColor)
                    .padding()

                Text("Select your rank to start the quiz")
                    .font(.title2)
                    .foregroundColor(.accentColor)
                    .padding(.bottom, 20)

                // Buttons for different rank quizzes
                VStack(spacing: 10) {
                    NavigationLink(destination: QuizView(quizType: .e4)) {
                        QuizButton(title: "The PMK-EE-E4 Quiz")
                    }

                    NavigationLink(destination: QuizView(quizType: .e5)) {
                        QuizButton(title: "The PMK-EE-E5 Quiz")
                    }

                    NavigationLink(destination: QuizView(quizType: .e6)) {
                        QuizButton(title: "The PMK-EE-E6 Quiz")
                    }

                    NavigationLink(destination: QuizView(quizType: .e7)) {
                        QuizButton(title: "The PMK-EE-E7 Quiz")
                    }
                }

                Spacer() // Pushes everything to the middle
            }
            .navigationBarHidden(true)
        }
    }
}

// A custom view for a quiz button
struct QuizButton: View {
    var title: String

    var body: some View {
        Text(title)
            .bold()
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
            .background(Color.accentColor)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
