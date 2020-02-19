//
//  PersonDetailViewController.swift
//  Course - 1st swift apps - HW-07
//
//  Created by Lev Litvak on 19.02.2020.
//  Copyright © 2020 Lev Litvak. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var personLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    // MARK: - Public properties
    var person: Person!
    
    // MARK: - Override functions
    override func viewDidLoad() {
        super.viewDidLoad()

        personLabel.text = person.desciption
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "E-mail: \(person.email)"
    }
}
