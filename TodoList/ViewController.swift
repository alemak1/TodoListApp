//
//  ViewController.swift
//  TodoList
//
//  Created by Aleksander Makedonski on 1/31/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    let managedObjectContext = DataController.sharedInstance.managedObjectContext
   

    @IBOutlet weak var textField: UITextField!
    
    let dataController = DataController.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func save(_ sender: Any) {
        
        guard let text = textField.text else { return }
        
        let item = NSEntityDescription.insertNewObject(forEntityName: "Item", into: dataController.managedObjectContext) as! Item
        
        item.text = text
        dataController.saveContext()
        
        dismiss(animated: true, completion: nil)
    }
    
    
}

