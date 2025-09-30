//
//  ContactStorage.swift
//  pokemonContactApp
//
//  Created by 이정은 on 9/30/25.
//

import UIKit

class ContactStorage {
    
    static let shared = ContactStorage()
    private init() {}
    
    let key = "contacts"
    
    // 저장
    func save(contact: ContactData) {
        var contacts = fetchContacts()
        contacts.append(contact)
        
        if let data = try? JSONEncoder().encode(contacts) {
            UserDefaults.standard.set(data, forKey: key)
        }
    }
    
    // 불러오기
    func fetchContacts() -> [ContactData] {
        guard let data = UserDefaults.standard.data(forKey: key),
              let contacts = try? JSONDecoder().decode([ContactData].self, from: data) else {
            return []
        }
        return contacts
    }
}
