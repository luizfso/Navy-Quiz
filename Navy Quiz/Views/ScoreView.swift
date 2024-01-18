// ScoreView.swift
// Views

import SwiftUI

struct ScoreView: View {
    let score: Int
    let totalQuestions: Int
    var restartAction: () -> Void
    var backToMainMenuAction: () -> Void  // New closure for going back to main menu

    var body: some View {
        VStack(spacing: 20) {
            Text("Quiz Complete!")
                .font(.title)
                .bold()

            Text("Your Score: \(score)/\(totalQuestions)")
                .font(.title2)

            Button(action: restartAction) {
                Text("Restart Quiz")
                    .bold()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
            
            Button(action: backToMainMenuAction) {
                Text("Back to Main Menu")
                    .bold()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(score: 0, totalQuestions: 0, restartAction: {}, backToMainMenuAction:{})
    }
}
