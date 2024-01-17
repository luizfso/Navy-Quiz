// QuizViewModel.swift
// ViewModels

import Foundation

class QuizViewModel: ObservableObject {
    @Published var questions: [QuestionItem]
    @Published var currentQuestionIndex = 0
    @Published var selectedAnswer: String?
    @Published var score: Int = 0
    @Published var quizCompleted = false
    
    init(questions: [QuestionItem]) {
            self.questions = questions
        }
    
    var currentQuestion: QuestionItem {
        questions[currentQuestionIndex]
    }
    
    func selectAnswer(_ answer: String) {
        selectedAnswer = answer
        if answer == currentQuestion.correctAnswer {
            score += 1
        }
    }
    
    func goToNextQuestion() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
            selectedAnswer = nil
        } else {
            finishQuiz()
        }
    }
    
    private func finishQuiz() {
        quizCompleted = true
    }

    func resetQuiz() {
        currentQuestionIndex = 0
        score = 0
        quizCompleted = false
        selectedAnswer = nil
    }
}
