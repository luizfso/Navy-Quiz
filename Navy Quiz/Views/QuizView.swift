import SwiftUI

struct QuizView: View {
    @StateObject var viewModel: QuizViewModel

    var body: some View {
        VStack {
            if !viewModel.quizCompleted {
                
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
                                .frame(maxWidth: .infinity, alignment: .leading)  // Text aligned to left
                                .padding()
                        }
                        .background(viewModel.selectedAnswer == option ? Color.blue : Color.white)
                        .foregroundColor(Color.black)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.blue, lineWidth: 1)
                        )
                    }
                    .padding(.horizontal)
                }
                
                Spacer()

                Button("Next") {
                    viewModel.goToNextQuestion()
                }
                .disabled(viewModel.selectedAnswer == nil)
                .padding()
                .frame(maxWidth: .infinity)  // Makes the button full width
                .background(viewModel.selectedAnswer != nil ? Color.green : Color.gray)
                .foregroundColor(Color.white)
                .cornerRadius(10)

                Spacer()  // Adds spacing at the bottom

               
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


/*
import SwiftUI

struct QuizView: View {
    @StateObject var viewModel: QuizViewModel

    var body: some View {
        VStack(alignment: .leading) {
            Spacer(minLength: 40)  // Adds more space at the top

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
                            .frame(maxWidth: .infinity, alignment: .leading)  // Text aligned to left
                            .padding()
                    }
                    .background(viewModel.selectedAnswer == option ? Color.blue : Color.white)
                    .foregroundColor(Color.black)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue, lineWidth: 1)
                    )
                }
                .padding(.horizontal)
            }

            Spacer()  // Adds spacing between the options and the next button

            Button("Next") {
                viewModel.goToNextQuestion()
            }
            .disabled(viewModel.selectedAnswer == nil)
            .padding()
            .frame(maxWidth: .infinity)  // Makes the button full width
            .background(viewModel.selectedAnswer != nil ? Color.green : Color.gray)
            .foregroundColor(Color.white)
            .cornerRadius(10)

            Spacer()  // Adds spacing at the bottom
        }
        .padding(.horizontal)
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(viewModel: QuizViewModel(questions: QuizData.e4Questions))
    }
}
*/
