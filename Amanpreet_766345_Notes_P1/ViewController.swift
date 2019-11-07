//
//  ViewController.swift
//  Amanpreet_766345_Notes_P1
//
//  Created by MacStudent on 2019-11-07.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tableView: UITableView!
    var folders: [String]?
override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
    self.navigationItem.rightBarButtonItem = editButtonItem
     folders = []
    }

    @IBAction func NewFolder(_ sender: UIBarButtonItem) {
let alertaction = UIAlertController(title: "New Folder", message: "Enter a name for this folder", preferredStyle: .alert)
         let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertaction.addTextField { (textField) in textField.placeholder = "Name"
            
        }
        alertaction.addAction(UIAlertAction(title: "Add Item", style: .destructive, handler: {(action) in
    let Name = alertaction.textFields?.first?.text
             print("\(Name)")
            self.folders?.append(Name!)
           self.tableView.reloadData()
            print("\(self.folders)")
            
        }))
       
      alertaction.addAction(cancelAction)
      self.present(alertaction, animated: true, completion: nil)

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return folders?.count ?? 0
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "")
        cell.textLabel?.text = folders![indexPath.row]
        cell.imageView?.image = UIImage(named: "folder")
        return cell
    }
    
    
}

