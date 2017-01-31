//
//  FetchedResultsController.swift
//  TodoList
//
//  Created by Aleksander Makedonski on 1/31/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class TodoFetchedResultsController: NSFetchedResultsController<Item>, NSFetchedResultsControllerDelegate{
    
    private let tableView: UITableView
    
    init(managedObjectContext: NSManagedObjectContext, withTableView tableView: UITableView){
        self.tableView = tableView
        super.init(fetchRequest: Item.fetchRequest(), managedObjectContext: managedObjectContext, sectionNameKeyPath: nil, cacheName: nil)
        
        self.delegate = self
        tryFetch()
    }
    
    
    func tryFetch(){
        do {
            try performFetch()
        } catch let error as NSError{
            print("Unresolved error: \(error),\(error.userInfo)")
        }
    }
    
    //MARK: NSFetchedResultsControllerDelegate
    
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.reloadData()
    }

}
