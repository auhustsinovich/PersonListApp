//
//  MainTableViewController.swift
//  PersonListApp
//
//  Created by Daniil on 22.03.22.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    var persons: [Person] = []

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Person", for: indexPath)
        let person = persons [indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content

        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let addInfoVC = segue.destination as? AdditionalInfoViewController else { return }
            addInfoVC.person = persons[indexPath.row]
        }
    }
}
