//
//  ContentView.swift
//  ContactsSwiftUI
//
//  Created by leila on 21.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    private var contacts = Person.getPersonsList()
    
    var body: some View {
        TabView {
            ContactListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            NumberView(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
