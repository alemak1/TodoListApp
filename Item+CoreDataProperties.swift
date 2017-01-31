//
//  Item+CoreDataProperties.swift
//  TodoList
//
//  Created by Aleksander Makedonski on 1/31/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//

import Foundation
import CoreData


extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item");
    }
    
    
    /*
    static let fetchRequest: NSFetchRequest<Item> = { () -> NSFetchRequest<Item> in
        let request = NSFetchRequest<Item>(entityName: "Item")
        let sortDescriptor = NSSortDescriptor(key: "text", ascending: true)
        request.sortDescriptors = [sortDescriptor]
        return request
    }()
    
    */
    

    @NSManaged public var completed: Bool
    @NSManaged public var text: String?

}
