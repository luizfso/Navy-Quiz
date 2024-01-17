// QuestionItem.swift
// Models

import Foundation

struct QuestionItem: Identifiable {
    let id: UUID
    let questionText: String
    let options: [String]
    let correctAnswer: String
    
    init(id: UUID = UUID(), questionText: String, options: [String], correctAnswer: String) {
        self.id = id
        self.questionText = questionText
        self.options = options
        self.correctAnswer = correctAnswer
    }
}
