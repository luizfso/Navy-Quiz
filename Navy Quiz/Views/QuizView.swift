// QuizView.swift
// Views

import SwiftUI

struct QuizView: View {
    @StateObject var viewModel = QuizViewModel() // No need to pass questions explicitly
    @State private var isShowingScore = false

    var body: some View {
        VStack {
            Text(viewModel.currentQuestion.questionText)
                .padding()
            
            ForEach(viewModel.currentQuestion.options, id: \.self) { option in
                Button(action: {
                    viewModel.selectAnswer(option)
                }) {
                    HStack {
                        Text(option)
                            .foregroundColor(.white)
                            .padding()
                        Spacer()
                    }
                    .background(viewModel.selectedAnswer == option ? Color.blue : Color.gray)
                    .cornerRadius(10)
                }
                .padding(.horizontal)
            }
            
            Button(action: viewModel.goToNextQuestion) {
                Text("Next")
                    .bold()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
            .disabled(viewModel.selectedAnswer == nil)
            
            Spacer()
        }
        .navigationTitle("Question \(viewModel.currentQuestionIndex + 1)")
        .sheet(isPresented: $viewModel.quizCompleted) {
            ScoreView(score: viewModel.score, totalQuestions: viewModel.questions.count, restartAction: restartQuiz)
        }
    }

    private func restartQuiz() {
        viewModel.resetQuiz()
        isShowingScore = false
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
