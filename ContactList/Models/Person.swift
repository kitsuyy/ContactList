//
//  File.swift
//  ContactList
//
//  Created by Kirill Lozovoi on 10/19/22.
//


struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String

    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        var names = DataStore().names.shuffled()
        var surnames = DataStore().surnames.shuffled()
        var emails = DataStore().emails.shuffled()
        var phoneNumbers = DataStore().phoneNumbers.shuffled()
        
        for _ in DataStore().names {
            persons.append(Person(
                name: names.remove(at: 0),
                surname: surnames.remove(at: 0),
                email: emails.remove(at: 0),
                phoneNumber: phoneNumbers.remove(at: 0))
            )
        }
        return persons
    }
}
