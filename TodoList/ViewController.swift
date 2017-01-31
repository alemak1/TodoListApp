//
//  ViewController.swift
//  TodoList
//
//  Created by Aleksander Makedonski on 1/31/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var textField: UITextField!
    
    
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
        dismiss(animated: true, completion: nil)
    }
    
    
}

