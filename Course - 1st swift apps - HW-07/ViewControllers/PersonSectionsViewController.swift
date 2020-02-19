//
//  PersonSectionsViewController.swift
//  Course - 1st swift apps - HW-07
//
//  Created by Lev Litvak on 19.02.2020.
//  Copyright © 2020 Lev Litvak. All rights reserved.
//

import UIKit

class PersonSectionsViewController: UITableViewController {

    // MARK: - Private Properties
    private let persons = Person.getPersons()
    private var sectionsData: [[String]] = []
    
    // MARK: - Override functions
    override func viewDidLoad() {
        super.viewDidLoad()

        for person in persons {
            sectionsData.append([person.phone, person.email])
        }
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sectionsData.first?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].desciption
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = sectionsData[indexPath.section][indexPath.row]

        return cell
    }
}
