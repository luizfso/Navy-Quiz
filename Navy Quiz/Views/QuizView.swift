// QuizView.swift
// Views

import SwiftUI

struct QuizView: View {
    @StateObject var viewModel: QuizViewModel
    @Environment(\.presentationMode) var presentationMode
    
    let testTitle: String

    var body: some View {
        VStack {
            if !viewModel.quizCompleted {
                // 'Give Up' button and question display logic here

                // Assuming currentQuestion is safely unwrapped
                if let currentQuestion = viewModel.currentQuestion {
                    Text(currentQuestion.questionText)
                        // Additional formatting and buttons for options
                } else {
                    Text("No question available")
                }

                // Navigation to next question or score calculation logic
            } else {
                // ScoreView displayed when the quiz is completed
                ScoreView(
                    score: viewModel.score,
                    totalQuestions: viewModel.questions.count,
                    restartAction: {
                        viewModel.resetQuiz()
                    },
                    backToMainMenuAction: {
                        presentationMode.wrappedValue.dismiss()
                    }
                )
            }
        }
        .padding()
        .background(Color("BackgroundPrimary"))
        .navigationBarBackButtonHidden(true)
    }
}

struct ScoreView: View {
    let score: Int
    let totalQuestions: Int
    var restartAction: () -> Void
    var backToMainMenuAction: () -> Void

    var body: some View {
        VStack {
            Text("Quiz Complete!")
                .font(.title)
                .bold()

            Text("Your Score: \(score)/\(totalQuestions)")
                .font(.title2)

            Button(action: restartAction) {
                Text("Restart Quiz")
                    // Button styling
            }

            Button(action: backToMainMenuAction) {
                Text("Back to Main Menu")
                    // Button styling
            }
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(viewModel: QuizViewModel(), testTitle: "PMK-EE-E4")
    }
}

