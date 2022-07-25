//
//  Person.swift
//  ContactsSwiftUI
//
//  Created by leila on 21.07.2022.
//

struct Person: Identifiable {
        
        let id: Int
        let name: String
        let surname: String
        let email: String
        let phoneNumber: String
        
        var fullName: String {
            "\(name) \(surname)"
        }
        
        static func getPersonsList() -> [Person] {
            
            var persons: [Person] = []
            
            let names = DataManager.shared.names.shuffled()
            let surnames = DataManager.shared.surnames.shuffled()
            let emails = DataManager.shared.emails.shuffled()
            let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
            
            
            for index in 0..<names.count {
                let person = Person(
                    id: index + 1,
                    name: names[index],
                    surname: surnames[index],
                    email: emails[index],
                    phoneNumber: phoneNumbers[index]
                )
                
                persons.append(person)
            }
            return persons
        }
    }
