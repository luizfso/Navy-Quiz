//
//  APIService.swift
//  Navy Quiz
//
//  Created by Luiz Santiago on 1/18/24.
//

import Foundation

class APIService {

    static let shared = APIService()

    private init() {}

    // Base URL of your API
    let baseURL = URL(string: "https://your-api-url.com")!

    // Fetch updated questions from the server
    func fetchUpdatedQuestions(since date: Date, completion: @escaping ([QuizQuestion]?, Error?) -> Void) {
        // Construct the URL for the request
        let endpoint = baseURL.appendingPathComponent("/questions/updates")
        var request = URLRequest(url: endpoint)
        request.httpMethod = "GET"

        // Add date to the request header or parameters as needed
        let dateFormatter = ISO8601DateFormatter()
        request.addValue(dateFormatter.string(from: date), forHTTPHeaderField: "Last-Updated")

        // Perform the network request
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil, error)
                return
            }

            do {
                // Parse the JSON data
                let updatedQuestions = try JSONDecoder().decode([QuizQuestion].self, from: data)
                completion(updatedQuestions, nil)
            } catch {
                completion(nil, error)
            }
        }.resume()
    }

    // Additional API methods as needed
}
