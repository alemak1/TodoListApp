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

    @NSManaged public var completed: Bool
    @NSManaged public var text: String?

}
