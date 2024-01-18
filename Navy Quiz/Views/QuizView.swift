import SwiftUI

struct QuizView: View {
    @StateObject var viewModel: QuizViewModel

    var body: some View {
        VStack {
            if !viewModel.quizCompleted {
                Text(viewModel.currentSubject)
                    .font(.headline)
                    .padding()

                Text(viewModel.currentQuestion.questionText)
                    .padding()

                ForEach(viewModel.currentQuestion.options, id: \.self) { option in
                    Button(action: {
                        viewModel.selectAnswer(option)
                    }) {
                        Text(option)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal)
                }

                Spacer()
            } else {
                Text("Quiz Complete! Your score: \(viewModel.score)")
                    .padding()

                Button("Restart Quiz") {
                    viewModel.resetQuiz()
                }
                .padding()
                .background(Color.green)
                .foregroundColor(Color.white)
                .cornerRadius(10)
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
