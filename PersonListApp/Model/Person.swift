//
//  Person.swift
//  PersonListApp
//
//  Created by Daniil on 22.03.22.
//

import Foundation

struct Person {
    let firstName: String
    let secondName: String
    let number: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
}

extension Person {
    
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let firstNames = DataManager.data.firstNames.shuffled()
        let secondNames = DataManager.data.secondNames.shuffled()
        let numbers = DataManager.data.numbers.shuffled()
        let emails = DataManager.data.emails.shuffled()
        
        for index in 0..<firstNames.count {
            let person = Person(
                firstName: firstNames[index], secondName: secondNames[index], number: numbers[index], email: emails[index]
            )
            persons.append(person)
            
        }
        return persons
    }
}


