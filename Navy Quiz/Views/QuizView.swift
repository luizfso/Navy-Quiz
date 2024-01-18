import SwiftUI

struct QuizView: View {
    @StateObject var viewModel: QuizViewModel
    @Environment(\.presentationMode) var presentationMode
    
    let navyBlueColor = Color.blue.opacity(0.8)  // Soft navy blue color

    var body: some View {
        VStack {
            if !viewModel.quizCompleted {
                // 'Give Up' button at the top
                HStack {
                    Button("Give Up") {
                        presentationMode.wrappedValue.dismiss()
                    }
                    .foregroundColor(.red)
                    .padding()

                    Spacer()
                }
                
                Spacer()
                
                Text(viewModel.currentSubject)
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .padding(.bottom, 40)

                Text("Question:")
                    .font(.headline)
                    .padding(.bottom, 2)
                Text(viewModel.currentQuestion.questionText)
                    .padding(.bottom, 20)

                ForEach(viewModel.currentQuestion.options, id: \.self) { option in
                    Button(action: {
                        viewModel.selectAnswer(option)
                    }) {
                        HStack {
                            Text(option)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                                .foregroundColor(viewModel.selectedAnswer == option ? Color.white : Color.black)  // White for selected, black otherwise
                        }
                        .background(viewModel.selectedAnswer == option ? navyBlueColor : Color.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(navyBlueColor, lineWidth: 1)  // Soft navy blue border
                        )
                    }
                    .padding(.horizontal)
                }

                Spacer()

                Button(action: {
                    viewModel.goToNextQuestion()
                }) {
                    Text("Next")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(viewModel.selectedAnswer != nil ? Color.green : Color.gray)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
                .disabled(viewModel.selectedAnswer == nil)
                .contentShape(Rectangle())
                .padding()

                Spacer()
            } else {
                    // When the quiz is completed, show ScoreView with 'Back to Main Menu' button
                    ScoreView(
                        score: viewModel.score,
                        totalQuestions: viewModel.totalQuestions,
                        restartAction: {
                            viewModel.resetQuiz()
                        },
                        backToMainMenuAction: {
                            presentationMode.wrappedValue.dismiss() // Navigate back to ContentView
                        }
                    )
                }
            }
        .padding()
        .navigationBarBackButtonHidden(true)
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(viewModel: QuizViewModel(questions: QuizData.e4Questions))
    }
}
