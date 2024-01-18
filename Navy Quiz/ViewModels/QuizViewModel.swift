import Foundation

class QuizViewModel: ObservableObject {
    @Published var questions: [String: [QuestionItem]]
    @Published var currentSubject: String
    @Published var currentQuestionIndex = 0
    @Published var score: Int = 0
    @Published var quizCompleted = false

    init(questions: [String: [QuestionItem]]) {
        self.questions = questions
        self.currentSubject = questions.keys.first ?? ""
    }

    var currentQuestions: [QuestionItem] {
        questions[currentSubject] ?? []
    }

    var currentQuestion: QuestionItem {
        currentQuestions[currentQuestionIndex % currentQuestions.count]
    }

    func goToNextQuestion() {
        if currentQuestionIndex < currentQuestions.count - 1 {
            currentQuestionIndex += 1
        } else {
            if let nextSubject = getNextSubject() {
                currentSubject = nextSubject
                currentQuestionIndex = 0
            } else {
                quizCompleted = true
            }
        }
    }

    private func getNextSubject() -> String? {
        let subjects = Array(questions.keys)
        if let currentIndex = subjects.firstIndex(of: currentSubject), currentIndex < subjects.count - 1 {
            return subjects[currentIndex + 1]
        }
        return nil
    }

    func resetQuiz() {
        currentSubject = questions.keys.first ?? ""
        currentQuestionIndex = 0
        score = 0
        quizCompleted = false
    }

    func selectAnswer(_ answer: String) {
        if currentQuestion.correctAnswer == answer {
            score += 1
        }
        goToNextQuestion()
    }
}
