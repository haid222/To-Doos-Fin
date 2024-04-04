//
//  ViewController.swift
//  To DooS
//
//  Created by Haidara Sulaiman on 04/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    // Define your todo items
    let todos = [
        Todo(title: "Finish your homework"),
        Todo(title: "Read a book"),
        // Add more todo items as needed
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        
        cell.textLabel?.text = "⬜️ \(todos[indexPath.row].title)"
        
        
        let isCompleted = false
        if isCompleted {
            cell.textLabel?.text?.append("✅")
        }
        
        return cell
    }
}


struct Todo {
    let title: String
}
