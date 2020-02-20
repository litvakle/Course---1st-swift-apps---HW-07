//
//  ContactsViewController.swift
//  Course - 1st swift apps - HW-07
//
//  Created by Lev Litvak on 19.02.2020.
//  Copyright © 2020 Lev Litvak. All rights reserved.
//

import UIKit

class PersonsViewController: UITableViewController {
    
    // MARK: - Private properties
    private let persons = Person.getPersons()
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = persons[indexPath.row].fullname

        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let pdVC = segue.destination as? PersonDetailViewController {
            if let indexPath = tableView.indexPathForSelectedRow {
                pdVC.person = persons[indexPath.row]
            }
        }
    }
}
