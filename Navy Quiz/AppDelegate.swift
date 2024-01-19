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

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Preload questions if it's the first launch
        preloadDataIfNeeded()

        // Additional setup if required
        return true
    }

    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "YourModelName")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

    // MARK: - Preloading Data

    private func preloadDataIfNeeded() {
        let defaults = UserDefaults.standard
        let isPreloaded = defaults.bool(forKey: "isPreloaded")
        if !isPreloaded {
            // Preload your data
            preloadQuestions()
            defaults.set(true, forKey: "isPreloaded")
        }
    }

    private func preloadQuestions() {
        // Assuming 'Question' is the Core Data entity name
        // Load data from a file, decode it and store it in Core Data
        // This is just a placeholder, replace with your actual preloading logic
    }
}
