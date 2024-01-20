import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    @StateObject var viewModel: QuizViewModel

    init(viewModel: QuizViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                // Rest of your UI components go here
                
                ForEach(viewModel.ranks, id: \.self) { rank in
                    NavigationLink(destination: QuizView(viewModel: viewModel, testTitle: "PMK-EE-\(rank)")) {
                        QuizButton(title: "The PMK-EE-\(rank) Quiz")
                    }
                }
                
                Spacer()
            }
            .background(Color("BackgroundPrimary"))
            .navigationBarHidden(true)
        }
        .onAppear {
//            viewModel.fetchQuestions(forRank: "E4") // Modify as needed
        }
    }
}

struct QuizButton: View {
    var title: String

    var body: some View {
        Text(title)
            // Rest of the button styling
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = QuizViewModel(managedObjectContext: PersistentContainer.shared.viewContext)
        ContentView(viewModel: viewModel)
    }
}
