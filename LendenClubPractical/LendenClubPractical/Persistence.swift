//
//  Persistence.swift
//  LendenClubPractical
//
//  Created by Nisha on 03/08/25.
//

import CoreData

struct PersistenceController {
    
    static let shared = PersistenceController()
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "LendenClubPractical")
        container.loadPersistentStores(completionHandler: { _, _ in })
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
    
    func save() {
        let context = container.viewContext
        
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                print("error while saving data")
            }
        }
    }
}
