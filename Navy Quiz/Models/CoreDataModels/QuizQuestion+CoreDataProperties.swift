//
//  QuizQuestion+CoreDataProperties.swift
//  Navy Quiz
//
//  Created by Luiz Santiago on 1/18/24.
//
//

import Foundation
import CoreData


extension QuizQuestion {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<QuizQuestion> {
        return NSFetchRequest<QuizQuestion>(entityName: "QuizQuestion")
    }

    @NSManaged public var category: String?
    @NSManaged public var correctAnswer: String?
    @NSManaged public var id: UUID?
    @NSManaged public var lastUpdated: String?
    @NSManaged public var options: String?
    @NSManaged public var questionText: String?
    @NSManaged public var version: Int64

}

extension QuizQuestion : Identifiable {

}
