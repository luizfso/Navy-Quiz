//
//  AppDelegate.swift
//  Navy Quiz
//
//  Created by Luiz Santiago on 1/18/24.
//
import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Check if it's the first launch and preload questions
        if !UserDefaults.standard.bool(forKey: "hasPreloadedData") {
            preloadQuestions()
            UserDefaults.standard.set(true, forKey: "hasPreloadedData")
        }
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UISceneSession.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    // Core Data stack setup is usually here, if not using SwiftUI's new App lifecycle

    // Preload the initial set of questions from a JSON file into Core Data
    private func preloadQuestions() {
        // Assuming 'Question' is the Core Data entity name
        // and 'InitialQuestions.json' is the filename of the preloaded data
        guard let url = Bundle.main.url(forResource: "InitialQuestions", withExtension: "json") else { return }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            decoder.userInfo[CodingUserInfoKey.managedObjectContext] = persistentContainer.viewContext
            let questions = try decoder.decode([Question].self, from: data)
            print("Preloaded \(questions.count) questions.")
        } catch {
            print("Failed to preload data: \(error)")
        }
        
        saveContext()
    }

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

    // Core Data stack
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "AppModel")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
}

// If you're decoding directly into Core Data objects, you'll need this extension
extension CodingUserInfoKey {
    static let managedObjectContext = CodingUserInfoKey(rawValue: "managedObjectContext")!
}
