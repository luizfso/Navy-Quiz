// ContentView.swift
// Views

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme  // Detects the current color scheme
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                HStack {
                    Spacer()  // Pushes the button to the right

                    NavigationLink(destination: InfoView()) {
                        Image(systemName: "info.circle")  // System info icon
                            .font(.title2)
                            .foregroundColor(Color("AccentColor"))  // Use custom accent color
                    }
                    .padding([.top, .trailing])  // Padding to ensure it's easily tappable
                }

                if colorScheme == .dark {
                   Image("NavyQuizLogoWhite")  // Use the white logo for dark mode
                       .resizable()
                       .scaledToFit()
                       .frame(width: 300, height: 300)
               } else {
                   Image("NavyQuizLogo")  // Use the regular logo for light mode
                       .resizable()
                       .scaledToFit()
                       .frame(width: 300, height: 300)
               }

                Text("Navy Quiz")
                    .font(.largeTitle)
                    .foregroundColor(Color("TextPrimary"))  // Use TextPrimary color
                    .padding()

                Text("Select your rank to start the quiz")
                    .font(.title2)
                    .foregroundColor(Color("TextSecondary"))  // Use TextSecondary color
                    .padding()

                Group {
                    NavigationLink(destination: QuizView(viewModel: QuizViewModel(questions: QuizData.e4Questions), testTitle: "PMK-EE-E4")) {
                        QuizButton(title: "The PMK-EE-E4 Quiz")
                    }

                    NavigationLink(destination: QuizView(viewModel: QuizViewModel(questions: QuizData.e5Questions), testTitle: "PMK-EE-E5")) {
                        QuizButton(title: "The PMK-EE-E5 Quiz")
                    }

                    NavigationLink(destination: QuizView(viewModel: QuizViewModel(questions: QuizData.e6Questions), testTitle: "PMK-EE-E6")) {
                        QuizButton(title: "The PMK-EE-E6 Quiz")
                    }

                    NavigationLink(destination: QuizView(viewModel: QuizViewModel(questions: QuizData.e7Questions), testTitle: "PMK-EE-E7")) {
                        QuizButton(title: "The PMK-EE-E7 Quiz")
                    }
                }

                Spacer()
            }
            .background(Color("BackgroundPrimary"))  // Use BackgroundPrimary color
            .navigationBarHidden(true)
        }
    }
}

struct QuizButton: View {
    var title: String

    var body: some View {
        Text(title)
            .bold()
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
            .background(Color("AccentColor"))  // Updated to use AccentColor
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
