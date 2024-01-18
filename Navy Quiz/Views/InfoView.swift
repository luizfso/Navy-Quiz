import SwiftUI

struct InfoView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                
                Text("About the App")
                    .font(.title)
                    .bold()
                    .padding(.bottom, 5)

                Text("This app is designed to help users prepare for their naval tests. The questions and content provided here are for practice purposes and may not exactly reflect the questions you will encounter on the actual test day.")
                    .padding(.bottom, 5)

                Text("It's important to consult the official study materials and resources for the most accurate and up-to-date information. For more details, please visit the official website:")
                    .padding(.bottom, 5)

                Link("Official Study Materials", destination: URL(string: "https://www.officialnavylink.com")!)
                    .foregroundColor(.blue)

                Spacer()

                // 'Back to Main Menu' button matching 'Give Up' button style
                
            }
            .padding()
        }
        .navigationBarTitle("Information", displayMode: .inline)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
