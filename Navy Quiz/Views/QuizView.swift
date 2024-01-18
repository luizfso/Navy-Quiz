import SwiftUI

struct QuizView: View {
    @StateObject var viewModel: QuizViewModel

    var body: some View {
        VStack {
            if !viewModel.quizCompleted {
                Text(viewModel.currentQuestion.questionText)
                    .padding()

                ForEach(viewModel.currentQuestion.options, id: \.self) { option in
                    Button(action: {
                        viewModel.selectAnswer(option)
                    }) {
                        HStack {
                            Text(option)
                                .foregroundColor(viewModel.selectedAnswer == option ? .white : .black)
                                .padding()
                            Spacer()
                        }
                        .background(viewModel.selectedAnswer == option ? Color.blue : Color.gray)
                        .cornerRadius(10)
                    }
                    .padding(.horizontal)
                }

                Button("Next", action: viewModel.goToNextQuestion)
                    .disabled(viewModel.selectedAnswer == nil)
                    .padding()
            } else {
                Text("Quiz Complete! Your score: \(viewModel.score)")
                Button("Restart Quiz", action: viewModel.resetQuiz)
            }
        }
        .padding()
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(viewModel: QuizViewModel(questions: QuizData.e4Questions))
    }
}
