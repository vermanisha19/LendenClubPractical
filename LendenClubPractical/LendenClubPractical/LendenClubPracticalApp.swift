//
//  LendenClubPracticalApp.swift
//  LendenClubPractical
//
//  Created by Nisha on 03/08/25.
//

import SwiftUI

@main
struct LendenClubPracticalApp: App {
    
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
