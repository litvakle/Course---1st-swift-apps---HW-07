//
//  Contact.swift
//  Course - 1st swift apps - HW-07
//
//  Created by Lev Litvak on 19.02.2020.
//  Copyright © 2020 Lev Litvak. All rights reserved.
//

struct Person {
    
    let firstname: String
    let lastname: String
    let phone: String
    let email: String
    
    static var persons: [Person]? // i want similar data in both tables
    
    var fullname: String {
        return lastname + " " + firstname
    }
}

extension Person {
    static func getPersons() -> [Person] {
        if let persons = self.persons {
            return persons // if already have person list - return it
        }
        
        var firstnames = DataManager.shared.firstnames
        var lastnames = DataManager.shared.lastnames
        var phones = DataManager.shared.phones
        var emails = DataManager.shared.emails
        
        var persons: [Person] = []
        
        while firstnames.count > 0 {
            persons.append(Person(firstname: firstnames.removeRandom(),
                                    lastname: lastnames.removeRandom(),
                                    phone: phones.removeRandom(),
                                    email: emails.removeRandom()))
        }
        
        self.persons = persons
        
        return persons
    }
}


