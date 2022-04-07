//
//  Person.swift
//  ContactList
//
//  Created by Dinmukhammed Sagyntkan on 07.04.2022.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.numbers.shuffled()
        
        let iterationCount = min(names.count, surnames.count, emails.count, phones.count)
        
        for index in 1..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phones[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}
