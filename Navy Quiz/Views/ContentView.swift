import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Spacer()

                // Logo Image
                Image("NavyQuizLogo") // Ensure this image is in your Assets
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding(.bottom, 20)

                Text("Navy Quiz")
                    .font(.largeTitle)
                    .foregroundColor(.accentColor)
                    .padding()

                Text("Select your rank to start the quiz")
                    .font(.title2)
                    .foregroundColor(.accentColor)
                    .padding(.bottom, 5)

                // Buttons for different rank quizzes
                Group {
                    NavigationLink(destination: QuizView(viewModel: QuizViewModel(questions: QuizData.e4Questions))) {
                        QuizButton(title: "The PMK-EE-E4 Quiz")
                    }

                    NavigationLink(destination: QuizView(viewModel: QuizViewModel(questions: QuizData.e5Questions))) {
                        QuizButton(title: "The PMK-EE-E5 Quiz")
                    }

                    NavigationLink(destination: QuizView(viewModel: QuizViewModel(questions: QuizData.e6Questions))) {
                        QuizButton(title: "The PMK-EE-E6 Quiz")
                    }

                    NavigationLink(destination: QuizView(viewModel: QuizViewModel(questions: QuizData.e7Questions))) {
                        QuizButton(title: "The PMK-EE-E7 Quiz")
                    }
                }

                Spacer()
            }
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
