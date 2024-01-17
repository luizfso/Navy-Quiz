// ScoreView.swift
// Views

import SwiftUI

struct ScoreView: View {
    let score: Int
    let totalQuestions: Int
    var restartAction: () -> Void

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
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(score: 3, totalQuestions: 5, restartAction: {})
    }
}
