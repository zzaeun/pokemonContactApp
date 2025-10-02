//
//  ContactData.swift
//  pokemonContactApp
//
//  Created by 이정은 on 9/30/25.
//

import UIKit

// 저장할 연락처 데이터들
struct ContactData: Codable {
    let id: UUID
    var name: String
    var phoneNumber: String
    var profileImageData: Data?
    
    init(id: UUID = UUID(), name: String, phoneNumber: String, profileImageData: Data? = nil) {
        self.id = id
        self.name = name
        self.phoneNumber = phoneNumber
        self.profileImageData = profileImageData
    }
}
