// QuizView.swift
// Views

import SwiftUI

struct QuizView: View {
    let quizType: QuizType
    @StateObject var viewModel: QuizViewModel
    
    init(quizType: QuizType) {
        self.quizType = quizType
        switch quizType {
        case .e4:
            _viewModel = StateObject(wrappedValue: QuizViewModel(questions: QuizData.e4Questions))
        case .e5:
            _viewModel = StateObject(wrappedValue: QuizViewModel(questions: QuizData.e5Questions))
        case .e6:
            _viewModel = StateObject(wrappedValue: QuizViewModel(questions: QuizData.e6Questions))
        case .e7:
            _viewModel = StateObject(wrappedValue: QuizViewModel(questions: QuizData.e7Questions))
        }
    }

    var body: some View {
        // Here, you should display the questions from viewModel.questions
        // For example:
        List(viewModel.questions) { question in
            Text(question.questionText)
            // Display options...
        }
    }
}

// Define your quiz types
enum QuizType: String, CustomStringConvertible {
    case e4 = "E4"
    case e5 = "E5"
    case e6 = "E6"
    case e7 = "E7"

    var description: String {
        self.rawValue
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView(quizType: .e4) // For preview purposes
    }
}

