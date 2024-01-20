// QuestionItem.swift
// Models

import Foundation

struct QuestionItem: Identifiable {
    let id: UUID
    let questionText: String
    let options: [String]
    let correctAnswer: String
    // Include any additional properties needed for your quiz logic
}
