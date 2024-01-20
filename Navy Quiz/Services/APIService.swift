//
//  APIService.swift
//  Navy Quiz
//
//  Created by Luiz Santiago on 1/18/24.
//

import Foundation

// Decodable struct for parsing JSON data
struct QuizQuestionDTO: Decodable {
    let id: UUID
    let questionText: String
    let correctAnswer: String
    let options: [String]
    // ... Add other properties that match your JSON structure
}

class APIService {
    static let shared = APIService()
    private init() {}

    let baseURL = URL(string: "https://your-api-url.com")!

    func fetchUpdatedQuestions(completion: @escaping (Result<[QuizQuestionDTO], Error>) -> Void) {
        let endpoint = baseURL.appendingPathComponent("/questions/updates")
        var request = URLRequest(url: endpoint)
        request.httpMethod = "GET"

        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? NSError()))
                return
            }

            do {
                let decoder = JSONDecoder()
                let questions = try decoder.decode([QuizQuestionDTO].self, from: data)
                completion(.success(questions))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
