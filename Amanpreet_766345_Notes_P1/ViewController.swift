//
//  ViewController.swift
//  Amanpreet_766345_Notes_P1
//
//  Created by MacStudent on 2019-11-07.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationItem.rightBarButtonItem = editButtonItem
    }

    @IBAction func NewFolder(_ sender: UIBarButtonItem) {
let alertaction = UIAlertController(title: "New Folder", message: "Enter a name for this folder", preferredStyle: .actionSheet)
    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
let addItemAction = UIAlertAction(title: "AddItem", style: .cancel, handler: nil)
alertaction.addAction(cancelAction)
self.present(alertaction, animated: true, completion: nil)
alertaction.addAction(addItemAction)
self.present(alertaction, animated: true, completion: nil)
        
    }
    
}

