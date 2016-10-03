//
//  ResourceModel.swift
//  tableTest
//
//  Created by Michael Pfeifer on 03.10.16.
//  Copyright © 2016 Michael Pfeifer. All rights reserved.
//

import AppKit
import CoreData

class ResourceModel {
    let appDelegate = NSApplication.shared().delegate as! AppDelegate
    
    private lazy var managedObjectModel: NSManagedObjectModel = {
       let url = Bundle.main.url(forResource: "Servolist", withExtension: "momd")!
        let model = NSManagedObjectModel(contentsOf: url)!
        
        return model
    }()
    
    private lazy var storCoordinator: NSPersistentStoreCoordinator = {
       let coordinator = NSPersistentStoreCoordinator(managedObjectModel: self.managedObjectModel)
        
        let url = self.appDelegate.documentDir.appendingPathComponent("Servolist.sqlite")
        
        do{
            try coordinator.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: nil, at: url, options: nil)
        }catch {
            print(error)
        }
        return coordinator
        
    }()
    
    lazy var managedContext: NSManagedObjectContext = {
       var context = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
        
        context.persistentStoreCoordinator = self.storCoordinator
        
        return context
    }()
    
    func saveContext(){
        if managedContext.hasChanges {
            do {
                try managedContext.save()
            } catch{
                print(error)
            }
        }
    }
}
