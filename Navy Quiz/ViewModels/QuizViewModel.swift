import Foundation
import CoreData

class QuizViewModel: ObservableObject {
    @Published var ranks: [String] = ["E4", "E5", "E6", "E7"] // Replace with actual ranks or fetch dynamically
//    @Published var questions: [QuestionItem] = []
    @Published var currentQuestionIndex: Int = 0
    @Published var score: Int = 0
    @Published var quizCompleted: Bool = false

    private var managedObjectContext: NSManagedObjectContext

    init(managedObjectContext: NSManagedObjectContext) {
        self.managedObjectContext = managedObjectContext
//        self.fetchQuestions(forRank: "E4") // Default rank to start with, adjust as needed
    }

//    var currentQuestion: QuestionItem? {
//        guard currentQuestionIndex < questions.count else { return nil }
//        return questions[currentQuestionIndex]
//    }

//    func fetchQuestions(forRank rank: String) {
//        let fetchRequest: NSFetchRequest<QuizQuestion> = QuizQuestion.fetchRequest()
//        fetchRequest.predicate = NSPredicate(format: "category == %@", rank)
//        
//        do {
//            let fetchedQuestions = try managedObjectContext.fetch(fetchRequest)
//            self.questions = fetchedQuestions.compactMap { managedObject in
//                guard let id = managedObject.id,
//                      let questionText = managedObject.questionText,
//                      let correctAnswer = managedObject.correctAnswer,
//                      let optionsString = managedObject.options else {
//                    return nil
//                }
//
//                let options = optionsString.components(separatedBy: ",") // Assuming options are comma-separated
//                return QuestionItem(
//                    id: id,
//                    questionText: questionText,
//                    options: options,
//                    correctAnswer: correctAnswer
//                )
//            }
//            self.currentQuestionIndex = 0
//        } catch {
//            print("Error fetching questions for rank \(rank): \(error.localizedDescription)")
//        }
//    }


    func selectAnswer(_ answer: String) {
//        if let currentQuestion = currentQuestion, currentQuestion.correctAnswer == answer {
//            score += 1
//        }
//        goToNextQuestion()
    }

    private func goToNextQuestion() {
//        if currentQuestionIndex < questions.count - 1 {
//            currentQuestionIndex += 1
//        } else {
//            quizCompleted = true
//        }
    }

    func resetQuiz() {
        currentQuestionIndex = 0
        score = 0
        quizCompleted = false
    }

    // Add any other methods or logic as needed
}

// Struct for QuestionItem
//struct QuestionItem: Identifiable {
//    let id: UUID
//    let questionText: String
//    let options: [String]
//    let correctAnswer: String
//    // Include other properties to match your Core Data entity
//}
