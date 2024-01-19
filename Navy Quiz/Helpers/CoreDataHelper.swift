//
//  CoreDataHelper.swift
//  Navy Quiz
//
//  Created by Luiz Santiago on 1/18/24.
//

import CoreData
import UIKit

class CoreDataHelper {

    static let shared = CoreDataHelper()

    let persistentContainer: NSPersistentContainer

    private init() {
        // Assuming your Core Data model file is named 'AppModel.xcdatamodeld'
        persistentContainer = NSPersistentContainer(name: "AppModel")
        persistentContainer.loadPersistentStores { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
    }

    var context: NSManagedObjectContext {
        return persistentContainer.viewContext
    }

    // Fetch all QuizQuestion entities
    func fetchQuestions() -> [QuizQuestion] {
        let fetchRequest: NSFetchRequest<QuizQuestion> = QuizQuestion.fetchRequest()
        do {
            return try context.fetch(fetchRequest)
        } catch {
            print("Fetch error: \(error)")
            return []
        }
    }

    // Save changes in the context
    func saveContext() {
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    // Add more helper functions as needed for adding, updating, deleting questions
}

