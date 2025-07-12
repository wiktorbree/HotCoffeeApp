//
//  NSManagedObjectContext+Extension.swift
//  HotCoffeeApp
//
//  Created by Wiktor Bramer on 01/07/2025.
//

import Foundation
import CoreData

extension NSManagedObjectContext {
    static var current: NSManagedObjectContext {
        return PersistenceController.shared.container.viewContext
    }
}
