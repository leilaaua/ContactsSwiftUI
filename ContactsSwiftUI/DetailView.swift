//
//  DetailView.swift
//  ContactsSwiftUI
//
//  Created by leila on 21.07.2022.
//

import SwiftUI

struct DetailView: View {
    
    let person: Person
    
    var body: some View {
        Form {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                Spacer()
            }
            Label(person.phoneNumber, systemImage: "phone")
            Label(person.email, systemImage: "tray")
        }
        .navigationTitle(person.fullName)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(person: Person.getPersonsList().first!)
    }
}
