//
//  ContactListView.swift
//  ContactsSwiftUI
//
//  Created by leila on 21.07.2022.
//

import SwiftUI

struct ContactListView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(contact.fullName,destination: DetailView(person: contact))
            }
            .listStyle(.plain)
            .navigationTitle("Contacts")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contacts: Person.getPersonsList())
    }
    
}
