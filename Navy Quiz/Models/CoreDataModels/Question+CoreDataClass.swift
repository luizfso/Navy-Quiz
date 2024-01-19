//
//  Question+CoreDataClass.swift
//  Navy Quiz
//
//  Created by Luiz Santiago on 1/18/24.
//

import Foundation
import CoreData

@objc(Question)
public class Question: NSManagedObject {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Question> {
        return NSFetchRequest<Question>(entityName: "Question")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var questionText: String
    @NSManaged public var options: [String]
    @NSManaged public var correctAnswer: String
    @NSManaged public var category: String
    @NSManaged public var lastUpdated: Date // This is to track the last update time for syncing

}
