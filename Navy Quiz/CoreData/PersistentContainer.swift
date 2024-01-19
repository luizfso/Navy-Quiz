//
//  PersistentContainer.swift
//  Navy Quiz
//
//  Created by Luiz Santiago on 1/18/24.
//

import CoreData

class PersistentContainer: NSPersistentContainer {

    // A shared instance of the container
    static let shared: PersistentContainer = {
        let container = PersistentContainer(name: "AppModel")
        
        // Load the persistent stores
        container.loadPersistentStores { storeDescription, error in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
        
        // Additional configuration, if needed
        // For example, enabling light migration:
        let description = NSPersistentStoreDescription()
        description.shouldMigrateStoreAutomatically = true
        description.shouldInferMappingModelAutomatically = true
        container.persistentStoreDescriptions = [description]

        return container
    }()

    // Access to the main context
    var mainContext: NSManagedObjectContext {
        return viewContext
    }
    
    // Function to save the main context
    func saveContext() {
        if viewContext.hasChanges {
            do {
                try viewContext.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}

