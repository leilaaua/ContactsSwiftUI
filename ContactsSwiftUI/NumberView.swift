//
//  NumberView.swift
//  ContactsSwiftUI
//
//  Created by leila on 21.07.2022.
//

import SwiftUI

struct NumberView: View {
    
    let contacts: [Person]
    
    var body: some View {
        List(contacts) { person in
            Section(header: Text(person.fullName).font(.headline)) {
                Label(person.phoneNumber, systemImage: "phone")
                Label(person.email, systemImage: "tray")
            }
            .textCase(.none)
        }
        .listStyle(.plain)
        .navigationBarTitle("Contact List")
    }
    
}

struct NumberView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView(contacts: Person.getPersonsList())
    }
}

