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
                .foregroundColor(Color("TextPrimary"))  // Updated to use TextPrimary color

            Text("Your Score: \(score)/\(totalQuestions)")
                .font(.title2)
                .foregroundColor(Color("TextSecondary"))  // Updated to use TextSecondary color

            Button(action: restartAction) {
                Text("Restart Quiz")
                    .bold()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
                    .background(Color("AccentColor"))  // Updated to use AccentColor
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
            
            Button(action: backToMainMenuAction) {
                Text("Back to Main Menu")
                    .bold()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
                    .background(Color("AccentColor"))  // Updated to use AccentColor
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
        }
        .background(Color("BackgroundPrimary"))  // Updated to use BackgroundPrimary color
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(score: 0, totalQuestions: 0, restartAction: {}, backToMainMenuAction:{})
    }
}
