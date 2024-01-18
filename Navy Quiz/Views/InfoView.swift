// InfoView.swift
// Views

import SwiftUI

struct InfoView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("About the App")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color("TextPrimary"))  // Updated to use TextPrimary color
                    .padding(.bottom, 5)

                Text("This app is designed to help users prepare for their naval tests. The questions and content provided here are for practice purposes and may not exactly reflect the questions you will encounter on the actual test day.")
                    .foregroundColor(Color("TextSecondary"))  // Updated to use TextSecondary color
                    .padding(.bottom, 5)

                Text("It's important to consult the official study materials and resources for the most accurate and up-to-date information. For more details, please visit the official website:")
                    .foregroundColor(Color("TextSecondary"))  // Updated to use TextSecondary color
                    .padding(.bottom, 5)
                
                Spacer()

                Text("Official Study Materials")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(Color("TextPrimary"))  // Updated to use TextPrimary color
                    .padding(.bottom, 5)
                
                Link("PMK-EE Study Guide", destination: URL(string: "https://www.navyadvancement.com/navy-advancement/professional-military-knowledge.php")!)
                    .foregroundColor(Color("AccentColor"))  // Updated to use AccentColor

                Link("Navy e-Learning for PMK-EE", destination: URL(string: "https://learning.nel.navy.mil/")!)
                    .foregroundColor(Color("AccentColor"))  // Updated to use AccentColor

                Link("MyNavy Portal for PMK-EE", destination: URL(string: "https://www.mnp.navy.mil/")!)
                    .foregroundColor(Color("AccentColor"))  // Updated to use AccentColor

                Link("PMK-EE App Download", destination: URL(string: "https://www.applocker.navy.mil/")!)
                    .foregroundColor(Color("AccentColor"))  // Updated to use AccentColor

                Spacer()
                // Additional content if needed...
            }
            .padding()
            .background(Color("BackgroundPrimary"))  // Updated to use BackgroundPrimary color
        }
        .navigationBarTitle("Information", displayMode: .inline)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

