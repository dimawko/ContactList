//
//  Person.swift
//  ContactList
//
//  Created by Dinmukhammed Sagyntkan on 07.04.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let number: String
    let email: String
    
    static func getPersons() -> [Person] {
        let data = DataManager()
        var persons: [Person] = []
        for _ in 1...8 {
            let person = Person(
                name: data.names.randomElement() ?? "",
                surname: data.surnames.randomElement() ?? "",
                number: data.numbers.randomElement() ?? "",
                email: data.emails.randomElement() ?? ""
            )
            persons.append(person)
        }
        return persons
    }
}
